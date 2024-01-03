import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path/path.dart' as path;

class ReportGen extends StatefulWidget {
  @override
  State<ReportGen> createState() => _ReportGenState();
}

class _ReportGenState extends State<ReportGen> {
  Future<void> generatePDF(List<Map<String, dynamic>> storeData) async {
    final pdf = pw.Document();

    // Add content to the PDF
    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Center(
            child: pw.Column(
              children: [
                pw.Text('Store Report'),
                for (var data in storeData)
                  pw.Text('${data['Name']}: ${data['Mobile No']}'),
              ],
            ),
          );
        },
      ),
    );

    try {
      // Get the application documents directory
      final appDocDir = await getApplicationDocumentsDirectory();

      // Generate a unique file name
      final fileName = 'store_report.pdf';

      // Create the file in the documents directory
      final file = File(path.join(appDocDir.path, fileName));

      // Save the PDF to the file
      await file.writeAsBytes(await pdf.save());

      print('PDF saved to: ${file.path}');
    } catch (e) {
      print('Error generating PDF: $e');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MCBP"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    // Fetch data from Firebase
                    List<Map<String, dynamic>> storeData =
                    await fetchDataFromFirebase();

                    // Generate and save the PDF
                    await generatePDF(storeData);
                  },
                  child: Text('Generate Report'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<List<Map<String, dynamic>>> fetchDataFromFirebase() async {
    // Assuming you have a collection named "Accept" in Firestore
    CollectionReference<Map<String, dynamic>> collection =
    FirebaseFirestore.instance.collection('Accept');

    // Fetch documents from the collection
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await collection.get();

    // Extract data from documents
    List<Map<String, dynamic>> storeData = [];
    querySnapshot.docs.forEach((doc) {
      storeData.add(doc.data());
    });

    return storeData;
  }
}
