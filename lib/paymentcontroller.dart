import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class PaymentController {

  Map<String, dynamic>? paymentIntentData;
  Future<void> makePayment(
      {required String amount, required String currency}) async {
    try {
      paymentIntentData = await createPaymentIntent(amount, currency);
      if (paymentIntentData != null) {
        await Stripe.instance.initPaymentSheet(
            paymentSheetParameters: SetupPaymentSheetParameters(
              paymentIntentClientSecret: paymentIntentData!['client_secret'],
              customerId: paymentIntentData!['customer'],
              merchantDisplayName: 'Prospects',
              style: ThemeMode.dark,
            )
        );
        displayPaymentSheet();
      }
    } catch (e, s) {
      print('exception:$e$s');
    }
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      print('Payment Success');
    } on Exception catch (e) {
      if (e is StripeException) {
        print("error: ${e.error.localizedMessage}");
      } else {
        print("Unifrosen error: ${e}");
      }
    } catch (e) {
      print("Exception:$e");
    }
  }

  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': calculateAmount(amount),
        'currency': currency,
        'payment_method_types': 'card'
      };
      var response = await https.post(
          Uri.parse('https://api.stripe.com/v1/payment_intents'),
          body: body,
          headers: {
            'Authorization': 'sk_test_51OTKxSJqHrW7Yr6bwZzOI4WxgZlGM29e0X2FPlhwCSiMCAXoYcGkRsPKtQhvncroPtlOWdi8Cwxh1vxm0YE01Yi600486wCigE',
            'Content-Type': 'application/x-www-form-urlencoded'
          });
      return jsonDecode(response.body);
    } catch (err) {
      print('err charging: ${err.toString()}');
    }
  }

  calculateAmount(String amount) {
    final a = (int.parse(amount)) * 100;
    return a.toString();
  }
}