// import 'dart:io';
// import 'package:boltandnut/ListofLabel.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
// import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter/material.dart';
// import 'constant.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'PPMLine.dart';
//
//
// class Part {
//   final String parts;
//   final String check;
//
//   Part({@required this.parts, @required this.check});
// }
//
// class SubmitForm extends StatelessWidget {
//
//
//
//
//   final String text;
//   final String text2;
//   final String taskName;
//   final currentDate;
//   final dropdownValue;
//   final bool valueToSend1;
//   final bool valueToSend2;
//   final bool valueToSend3;
//   final bool valueToSend4;
//   final bool valueToSend5;
//   final bool valueToSend6;
//   final bool valueToSend7;
//   final bool valueToSend8;
//   final bool valueToSend9;
//
//
//
//
//   final pdf = pw.Document();
//
//     writeOnPdf() async {
//       final header = ['Parts', 'Check'];
//
//       final parts = [
//         Part(parts: checkbox1[0], check: valueToSend1 ? 'done' : 'have issue'),
//         Part(parts: checkbox2[0], check: valueToSend2 ? 'done' : 'have issue'),
//         Part(parts: checkbox3[0], check: valueToSend3 ? 'done' : 'have issue'),
//         Part(parts: checkbox4[0], check: valueToSend4 ? 'done' : 'have issue'),
//         Part(parts: checkbox5[0], check: valueToSend5 ? 'done' : 'have issue'),
//         Part(parts: checkbox6[0], check: valueToSend6 ? 'done' : 'have issue'),
//         Part(parts: checkbox7[0], check: valueToSend7 ? 'done' : 'have issue'),
//         Part(parts: checkbox8[0], check: valueToSend8 ? 'done' : 'have issue'),
//         Part(parts: checkbox9[0], check: valueToSend9 ? 'done' : 'have issue'),
//       ];
//
//
//       final data = parts.map((part) => [part.parts, part.check]).toList();
//
//       final imageJpg =
//       (await rootBundle.load('images/MalaysiaAirports.jpg')).buffer
//           .asUint8List();
//
//       pdf.addPage(pw.MultiPage(
//           maxPages: 1,
//           pageFormat: PdfPageFormat.a4,
//           margin: pw.EdgeInsets.all(32),
//           build: (pw.Context context) {
//             return <pw.Widget>[
//               pw.Image(pw.MemoryImage(imageJpg), width: 120),
//
//               pw.Header(
//                   level: 1,
//                   child: pw.Text(
//                       'Baggage Handling System T2, MA(SEPANG) SDN BHD                                        ''Date: $currentDate',
//                       style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
//
//
//               pw.Header(level: 2, child: pw.Text('PPM Inspection Check Sheet')),
//               pw.Paragraph(
//                   text: '$taskName Subsystem $text done by shift $dropdownValue'),
//               pw.Table.fromTextArray(
//                 headers: header,
//                 data: data,
//                 cellAlignment: pw.Alignment.center,
//                 headerDecoration: pw.BoxDecoration(
//                   color: PdfColors.grey300,
//                 ),
//               ),
//               pw.SizedBox(height: 10),
//               pw.Paragraph(
//                 text: 'Remarks : $text2'
//               )
//             ];
//           }));
//       return saveDocument(name: 'CheckSheet.pdf', pdf: pdf);
//     }
//
//     static Future<File> saveDocument ({
//       @required String name,
//       @required pw.Document pdf,
//     }) async {
//       final bytes = await pdf.save();
//
//       final dir = await getApplicationDocumentsDirectory();
//       final file = File('${dir.path}/$name');
//
//       await file.writeAsBytes(bytes);
//
//       return file;
//     }
//
//     static Future openFile (File file) async {
//       final url = file.path;
//
//       await OpenFile.open(url);
//     }
//
//
//
//   // receive data from the FirstScreen as a parameter
//   SubmitForm(
//       {@required Key key,
//       @required this.text2,
//       @required this.text,
//       @required this.taskName,
//       this.currentDate,
//       this.dropdownValue,
//       @required this.valueToSend1,
//       @required this.valueToSend2,
//       @required this.valueToSend3,
//       @required this.valueToSend4,
//       @required this.valueToSend5,
//       @required this.valueToSend6,
//       @required this.valueToSend7,
//       @required this.valueToSend8,
//       @required this.valueToSend9})
//       : super(key: key);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepOrange,
//         title: Text('Recently Added'),
//       ),
//       backgroundColor: kbackgroundcolor,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Card(
//               color: Colors.deepOrange,
//               child: ListTile(
//                 leading: IconButton(
//                   icon: Icon(Icons.picture_as_pdf),
//                   onPressed: () async {
//                     final pdfFile = await writeOnPdf();
//                     await saveDocument(name: 'CheckSheet.pdf', pdf: pdf);
//                     await openFile(pdfFile);
//
//                   },
//                 ),
//                 trailing: Text(currentDate),
//                 title: Text(
//                   taskName,
//                   style:
//                   TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//                 subtitle: Text(
//                   'Subsystem $text | Shift $dropdownValue',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 isThreeLine: true,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



