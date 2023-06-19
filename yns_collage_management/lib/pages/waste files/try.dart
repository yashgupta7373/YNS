// ignore_for_file: non_constant_identifier_names, must_be_immutable, prefer_typing_uninitialized_variables, iterable_contains_unrelated_type, list_remove_unrelated_type

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_college_management/pages/Attendance/attendance_overviwe.dart';
import 'package:yns_college_management/pages/College%20Web/developer_page.dart';
import 'package:yns_college_management/pages/profile_page.dart';

class Try extends StatefulWidget {
  var uid, date, Class, subject;
  // DateTime date;
  Try({super.key});

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
            title: const Text('Attendance Taker'),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: Column(children: [
          Center(
            child: Container(
              width: mediaQuery.size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.teal[700],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(80),
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.teal.shade500,
                        blurRadius: 15,
                        offset: const Offset(0, 10))
                  ]),
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    'https://pluspng.com/img-png/user-png-icon-young-user-icon-2400.png')),
                            const SizedBox(width: 10),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Date: 10-12-2022',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text('Class: BCA',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text(
                                      'Subject: Programming Principle And Algorithm',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text('Teacher: Yash Gupta',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white))
                                ])
                          ]),
                    ),
                    const SizedBox(height: 10),
                    Container(
                        width: mediaQuery.size.width * 0.8,
                        height: 1,
                        color: Colors.teal[300]),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: SizedBox(
                        width: mediaQuery.size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text('Total Student',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.teal[300])),
                                const Text(
                                  '20',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('Total Present',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.teal[300])),
                                    const Text(
                                      '12',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          //new..
          const SizedBox(height: 50),
          Container(
            width: mediaQuery.size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.teal[700],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(80),
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.teal.shade500,
                      blurRadius: 15,
                      offset: const Offset(0, 10))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://pluspng.com/img-png/user-png-icon-young-user-icon-2400.png')),
                  const SizedBox(width: 10),
                  Text('Date: 10-12-2022',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text('Class: BCA',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text('Subject: Programming Principle And Algorithm',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text('Teacher: Yash Gupta',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  const SizedBox(height: 10),
                  Container(
                      width: mediaQuery.size.width * 0.8,
                      height: 1,
                      color: Colors.teal[300]),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SizedBox(
                      width: mediaQuery.size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text('Total Student',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.teal[300])),
                              const Text(
                                '20',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text('Total Present',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.teal[300])),
                                  const Text(
                                    '12',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
