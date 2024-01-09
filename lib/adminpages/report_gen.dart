import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    // Load a font with better Unicode support, for example, Open Sans
    final font = pw.Font.ttf(await rootBundle.load("assists/static/OpenSans-Light.ttf"));

    // Add content to the PDF using the loaded font
    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Center(
            child: pw.Column(
              children: [
                pw.Text('Store Report', style: pw.TextStyle(font: font)),
                for (var data in storeData)
                  pw.Text('${data['Name']}: ${data['Mobile No']}', style: pw.TextStyle(font: font)),
              ],
            ),
          );
        },
      ),
    );

    try {
      // Allow the user to choose the directory
      String? filePath = await FilePicker.platform.getDirectoryPath();

      if (filePath != null) {
        // Generate a unique file name
        final fileName = 'store_report.pdf';

        // Create the file in the chosen directory
        final file = File(path.join(filePath, fileName));

        // Save the PDF to the file
        await file.writeAsBytes(await pdf.save());

        print('PDF saved to: ${file.path}');
      } else {
        print('User canceled the file selection.');
      }
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
