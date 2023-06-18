import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';

import '../Attendance/attendance_taker.dart';

class Try extends StatefulWidget {
  const Try({super.key});
  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  final TextEditingController dateController = TextEditingController();

  // Create Date-time Variable
  DateTime _dateTime = DateTime.now();
  void get() {
    dateController.text = DateFormat('dd-MM-yyyy').format(_dateTime);
  }

  // Show Date Picker Method
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    // get();
    print('date----> $dateController');
    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
            elevation: 0, backgroundColor: Colors.teal[700], toolbarHeight: 32),
        body: Column(children: [
          Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.teal[700],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.teal.shade500,
                        blurRadius: 15,
                        offset: const Offset(0, 10))
                  ]),
              child: Column(children: const [
                Icon(Icons.edit_calendar, size: 180, color: Colors.white),
                Text('Attendance',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ])),
          Expanded(
              child: SizedBox(
                  child: SingleChildScrollView(
                      child: Column(children: [
            // Select date
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: _showDatePicker,
                    child: Container(
                        width: mediaQuery.size.width * 0.7,
                        height: 47,
                        decoration: BoxDecoration(
                            color: Colors.teal[500],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.teal.shade500,
                                  blurRadius: 15,
                                  offset: const Offset(0, 10))
                            ]),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Display Date
                                  Text(
                                      '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  const Icon(Icons.edit_calendar,
                                      color: Colors.white)
                                ]))))),

            // Select date
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: _showDatePicker,
                    child: Container(
                        width: mediaQuery.size.width * 0.7,
                        height: 47,
                        decoration: BoxDecoration(
                            color: Colors.teal[500],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.teal.shade500,
                                  blurRadius: 15,
                                  offset: const Offset(0, 10))
                            ]),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Display Date
                                  Text(
                                      '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  const Icon(Icons.edit_calendar,
                                      color: Colors.white)
                                ]))))),

            // student dob...
            // Row(children: [
            //   Expanded(
            //       child: Padding(
            //           padding: const EdgeInsets.all(20.0),
            //           child: TextField(
            //             style: TextStyle(
            //                 fontSize: 13,
            //                 fontStyle: FontStyle.normal,
            //                 color: Colors.blue[900]),
            //             controller: dateController,
            //             decoration: const InputDecoration(
            //                 contentPadding: EdgeInsets.all(8),
            //                 icon: Icon(
            //                   Icons.calendar_today_rounded,
            //                   // color: Colors.teal[800],
            //                 ),
            //                 hintText: "Select"),
            //             onTap: () async {
            //               // _showDatePicker();
            //               DateTime? pickedDate = await showDatePicker(
            //                   context: context,
            //                   initialDate: DateTime.now(),
            //                   firstDate: DateTime(1900),
            //                   lastDate: DateTime.now());
            //               if (pickedDate != null) {
            //                 setState(() {
            //                   dateController.text =
            //                       DateFormat('dd-MM-yyyy').format(pickedDate);
            //                 });
            //               }
            //             },
            //           )))
            // ]),
          ]))))
        ]));
  }
}
