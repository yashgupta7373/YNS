// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// //

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// // import 'makepdf.dart';
// import 'package:pdf/pdf.dart';

// //

// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';

// class add extends StatefulWidget {
//   @override
//   State<add> createState() => _addState();
// }

// class _addState extends State<add> {
//   TextEditingController name = TextEditingController();
//   TextEditingController div = TextEditingController();
//   TextEditingController rolln = TextEditingController();

//   CollectionReference ref = FirebaseFirestore.instance.collection('users');
//   var ww = '1A';
//   var options = [
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//     '10',
//   ];
//   var _currentItemSelected = "1";
//   var rool = "1";

//   var options1 = [
//     'A',
//     'B',
//   ];
//   var _currentItemSelected1 = "A";
//   var rool1 = "A";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add a student'),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               child: TextField(
//                 textAlign: TextAlign.center,
//                 controller: name,
//                 decoration: InputDecoration(
//                   hintText: 'Name',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               child: TextField(
//                 textAlign: TextAlign.center,
//                 controller: rolln,
//                 decoration: InputDecoration(
//                   hintText: 'Roll Number',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   children: [
//                     Text('Class : '),
//                     DropdownButton<String>(
//                       dropdownColor: Color.fromARGB(255, 0, 255, 21),
//                       isDense: true,
//                       isExpanded: false,
//                       iconEnabledColor: Color.fromARGB(255, 1, 1, 255),
//                       focusColor: Color.fromARGB(255, 0, 17, 251),
//                       items: options.map((String dropDownStringItem) {
//                         return DropdownMenuItem<String>(
//                           value: dropDownStringItem,
//                           child: Text(
//                             dropDownStringItem,
//                             style: TextStyle(
//                               color: Color.fromARGB(255, 11, 0, 0),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (newValueSelected) {
//                         setState(() {
//                           _currentItemSelected = newValueSelected!;
//                           rool = newValueSelected;

//                           ww = '';
//                           ww = _currentItemSelected + _currentItemSelected1;
//                         });
//                         print(ww);
//                       },
//                       value: _currentItemSelected,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   width: 35,
//                 ),
//                 Row(
//                   children: [
//                     Text('Div : '),
//                     DropdownButton<String>(
//                       dropdownColor: Color.fromARGB(255, 26, 255, 0),
//                       isDense: true,
//                       isExpanded: false,
//                       iconEnabledColor: Colors.blue[900],
//                       focusColor: Colors.blue[900],
//                       items: options1.map((String dropDownStringItem) {
//                         return DropdownMenuItem<String>(
//                           value: dropDownStringItem,
//                           child: Text(
//                             dropDownStringItem,
//                             style: TextStyle(
//                               color: Color.fromARGB(255, 0, 0, 0),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (newValueSelected1) {
//                         setState(() {
//                           _currentItemSelected1 = newValueSelected1!;
//                           rool1 = newValueSelected1;
//                           ww = '';
//                           ww = _currentItemSelected + _currentItemSelected1;
//                         });
//                         print(ww);
//                       },
//                       value: _currentItemSelected1,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             MaterialButton(
//               color: Color.fromARGB(255, 2, 11, 128),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               onPressed: () {
//                 ref.add({
//                   'name': name.text,
//                   'div': ww,
//                   'roll': rolln.text,
//                 }).whenComplete(() {
//                   Fluttertoast.showToast(
//                     msg: "added",
//                     toastLength: Toast.LENGTH_SHORT,
//                     gravity: ToastGravity.BOTTOM,
//                     timeInSecForIosWeb: 1,
//                     backgroundColor: Colors.red,
//                     textColor: Colors.white,
//                     fontSize: 16.0,
//                   );
//                 });
//               },
//               child: Text(
//                 'ADD',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ////////////////////////////////////////////////////
// ////////////////////////////////////////////////////
// ////////////////////////////////////////////////////

// class mainpage extends StatefulWidget {
//   @override
//   State<mainpage> createState() => _mainpageState();
// }

// class _mainpageState extends State<mainpage> {
//   // var ww = '1A';
//   // var options = [
//   //   '1',
//   //   '2',
//   //   '3',
//   //   '4',
//   //   '5',
//   //   '6',
//   //   '7',
//   //   '8',
//   //   '9',
//   //   '10',
//   // ];
//   // var _currentItemSelected = "1";
//   // var rool = "1";

//   // var options1 = [
//   //   'A',
//   //   'B',
//   // ];
//   // var _currentItemSelected1 = "A";
//   // var rool1 = "A";

//   var temp = [];

//   @override
//   Widget build(BuildContext context) {
//     final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
//         .collection('users')
//         .where(
//           'Class',
//           isEqualTo: 'BCA',
//         )
//         .snapshots();

//     return SafeArea(
//       child: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             // Navigator.pushReplacement(
//             //   context,
//             //   MaterialPageRoute(
//             //     builder: (context) => reportt(
//             //       list: temp,
//             //       clas: "BCA",
//             //     ),
//             //   ),
//             // );
//           },
//           child: Icon(
//             Icons.send,
//           ),
//         ),
//         appBar: AppBar(
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(
//                 'Attendance Page',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//               // SizedBox(
//               //   width: 15,
//               // ),
//               //       DropdownButton<String>(
//               //         dropdownColor: Colors.blue[900],
//               //         isDense: true,
//               //         isExpanded: false,
//               //         iconEnabledColor: Colors.white,
//               //         focusColor: Colors.white,
//               //         items: options.map((String dropDownStringItem) {
//               //           return DropdownMenuItem<String>(
//               //             value: dropDownStringItem,
//               //             child: Text(
//               //               dropDownStringItem,
//               //               style: TextStyle(
//               //                 color: Colors.white,
//               //                 fontWeight: FontWeight.bold,
//               //                 fontSize: 20,
//               //               ),
//               //             ),
//               //           );
//               //         }).toList(),
//               //         onChanged: (newValueSelected) {
//               //           setState(() {
//               //             _currentItemSelected = newValueSelected!;
//               //             rool = newValueSelected;
//               //             ww = '';
//               //             ww = _currentItemSelected + _currentItemSelected1;
//               //           });
//               //           print(ww);
//               //         },
//               //         value: _currentItemSelected,
//               //       ),
//               //       SizedBox(
//               //         width: 10,
//               //       ),
//               //       DropdownButton<String>(
//               //         dropdownColor: Colors.blue[900],
//               //         isDense: true,
//               //         isExpanded: false,
//               //         iconEnabledColor: Colors.white,
//               //         focusColor: Colors.white,
//               //         items: options1.map((String dropDownStringItem) {
//               //           return DropdownMenuItem<String>(
//               //             value: dropDownStringItem,
//               //             child: Text(
//               //               dropDownStringItem,
//               //               style: TextStyle(
//               //                 color: Colors.white,
//               //                 fontWeight: FontWeight.bold,
//               //                 fontSize: 20,
//               //               ),
//               //             ),
//               //           );
//               //         }).toList(),
//               //         onChanged: (newValueSelected1) {
//               //           setState(() {
//               //             _currentItemSelected1 = newValueSelected1!;
//               //             rool1 = newValueSelected1;
//               //             ww = '';
//               //             ww = _currentItemSelected + _currentItemSelected1;
//               //           });
//               //           print(ww);
//               //         },
//               //         value: _currentItemSelected1,
//               //       ),
//               //       SizedBox(
//               //         width: 25,
//               //       ),
//             ],
//           ),
//         ),
//         body: Column(
//           children: [
//             Container(
//               height: 200,
//               child: StreamBuilder(
//                 stream: _usersStream,
//                 builder: (BuildContext context,
//                     AsyncSnapshot<QuerySnapshot> snapshot) {
//                   if (snapshot.hasError) {
//                     return Text("something is wrong");
//                   }
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   }

//                   return Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: ListView.builder(
//                       itemCount: snapshot.data!.docs.length,
//                       itemBuilder: (_, index) {
//                         return InkWell(
//                           onTap: () {
//                             // 1019
//                             setState(() {
//                               if (temp.contains(snapshot
//                                   .data!.docChanges[index].doc['name'])) {
//                                 temp.remove(snapshot
//                                     .data!.docChanges[index].doc['name']);
//                               } else {
//                                 temp.add(snapshot
//                                     .data!.docChanges[index].doc['name']);
//                               }
//                             });
//                             print(temp);
//                             setState(() {});
//                           },
//                           child: Card(
//                             color: Colors.teal[700],
//                             elevation: 5,
//                             // shadowColor:
//                             //     presentArray.contains(arrRollno[index].toString())
//                             //         ? Colors.green
//                             //         : Colors.red,
//                             child: ListTile(
//                               title: Text(
//                                   snapshot.data!.docChanges[index].doc['name']),
//                               trailing: Container(
//                                 height: 40,
//                                 width: 100,
//                                 decoration: BoxDecoration(
//                                   color: temp.contains(snapshot
//                                           .data!.docChanges[index].doc['name'])
//                                       ? Color.fromARGB(255, 248, 20, 4)
//                                       : Color.fromARGB(255, 0, 228, 8),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     temp.contains(snapshot.data!
//                                             .docChanges[index].doc['name'])
//                                         ? 'Remove'
//                                         : 'add',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// /////////////////////////////////////
// /////////////////////////////////////
// /////////////////////////////////////
// /////////////////////////////////////
// /////////////////////////////////////

// class reportt extends StatefulWidget {
//   List list;
//   List list2;
//   String clas;
//   String date;
//   String subject;
//   reportt(
//       {required this.list,
//       required this.list2,
//       required this.clas,
//       required this.date,
//       required this.subject});
//   @override
//   State<reportt> createState() => _reporttState(
//       list: list, list2: list2, clas: clas, date: date, subject: subject);
// }

// class _reporttState extends State<reportt> {
//   List list;
//   List list2;
//   String clas;
//   String date;
//   String subject;

//   _reporttState(
//       {required this.list,
//       required this.list2,
//       required this.clas,
//       required this.date,
//       required this.subject});
//   final pdf = pw.Document();
//   var marks;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//       ),
//       body: PdfPreview(
//         canChangeOrientation: false,
//         canDebug: false,
//         build: (format) => generateDocument(
//           format,
//         ),
//       ),
//     );
//   }

//   Future<Uint8List> generateDocument(PdfPageFormat format) async {
//     final doc = pw.Document(pageMode: PdfPageMode.outlines);

//     final font1 = await PdfGoogleFonts.openSansRegular();
//     final font2 = await PdfGoogleFonts.openSansBold();

//     doc.addPage(
//       pw.Page(
//         pageTheme: pw.PageTheme(
//           pageFormat: format.copyWith(
//             marginBottom: 0,
//             marginLeft: 0,
//             marginRight: 0,
//             marginTop: 0,
//           ),
//           orientation: pw.PageOrientation.portrait,
//           theme: pw.ThemeData.withFont(
//             base: font1,
//             bold: font2,
//           ),
//         ),
//         build: (context) {
//           return pw.Column(
//             // mainAxisAlignment: pw.MainAxisAlignment.center,
//             children: [
//               pw.SizedBox(
//                 height: 20,
//               ),
//               pw.Text(
//                 'Attendance sheet',
//                 style: pw.TextStyle(
//                   fontSize: 25,
//                 ),
//               ),
//               pw.SizedBox(
//                 height: 20,
//               ),
//               pw.Row(
//                 mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
//                 children: [
//                   pw.Row(children: [
//                     pw.Text(
//                       'Date: ',
//                       style: pw.TextStyle(
//                         fontSize: 20,
//                       ),
//                     ),
//                     pw.Text(
//                       date,
//                       style: pw.TextStyle(
//                         fontSize: 20,
//                       ),
//                     ),
//                   ]),
//                   pw.Row(
//                     children: [
//                       pw.Text(
//                         'Class : ',
//                         style: pw.TextStyle(
//                           fontSize: 25,
//                         ),
//                       ),
//                       pw.Text(
//                         clas,
//                         style: pw.TextStyle(
//                           fontSize: 25,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               //subject
//               pw.Row(
//                 mainAxisAlignment: pw.MainAxisAlignment.center,
//                 children: [
//                   pw.Text(
//                     'Subject : ',
//                     style: pw.TextStyle(
//                       fontSize: 25,
//                     ),
//                   ),
//                   pw.Text(
//                     subject,
//                     style: pw.TextStyle(
//                       fontSize: 25,
//                     ),
//                   ),
//                 ],
//               ),
//               pw.SizedBox(
//                 height: 20,
//               ),
//               pw.Table(
//                 defaultColumnWidth: pw.FixedColumnWidth(120.0),
//                 border: pw.TableBorder.all(
//                   style: pw.BorderStyle.solid,
//                   width: 2,
//                 ),
//                 children: [
//                   pw.TableRow(children: [
//                     pw.Column(
//                         mainAxisAlignment: pw.MainAxisAlignment.center,
//                         children: [
//                           pw.Text(
//                             'Roll-No.',
//                             style: pw.TextStyle(
//                               fontSize: 20.0,
//                               fontWeight: pw.FontWeight.bold,
//                             ),
//                           ),
//                         ]),
//                     pw.Column(
//                         mainAxisAlignment: pw.MainAxisAlignment.center,
//                         children: [
//                           pw.Text(
//                             'Name',
//                             style: pw.TextStyle(
//                               fontSize: 20.0,
//                               fontWeight: pw.FontWeight.bold,
//                             ),
//                           ),
//                         ]),
//                   ]),
//                 ],
//               ),
//               pw.ListView.builder(
//                 itemCount: list.length,
//                 itemBuilder: (_, index) {
//                   return pw.Table(
//                     defaultColumnWidth: pw.FixedColumnWidth(120.0),
//                     border: pw.TableBorder.all(
//                         style: pw.BorderStyle.solid, width: 2),
//                     children: [
//                       pw.TableRow(
//                         children: [
//                           // pw.Column(children: [
//                           //   pw.Text(
//                           //     index.toString(),
//                           //     textAlign: pw.TextAlign.center,
//                           //     style: pw.TextStyle(
//                           //       fontSize: 20.0,
//                           //     ),
//                           //   ),
//                           // ]),
//                           pw.Column(
//                             children: [
//                               pw.Text(
//                                 list2[index],
//                                 textAlign: pw.TextAlign.center,
//                                 style: pw.TextStyle(fontSize: 20.0),
//                               ),
//                             ],
//                           ),
//                           pw.Column(
//                             children: [
//                               pw.Text(
//                                 list[index],
//                                 textAlign: pw.TextAlign.center,
//                                 style: pw.TextStyle(fontSize: 20.0),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ],
//           );
//         },
//       ),
//     );

//     return doc.save();
//   }
// }
