import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Attendance/attendance_overviwe.dart';

class Transport extends StatefulWidget {
  const Transport({super.key});

  @override
  State<Transport> createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  //listtile
  List<String> arrRollno = [
    '200955106190',
    '200955106191',
    '200955106192',
    '200955106193',
    '200955106194',
    '200955106195',
    '200955106196',
    '200955106197',
    '200955106198',
    '200955106199',
    '200955106200',
    '200955106201'
  ];

  List<String> arrclass = [
    'BCA',
    'Bcom.',
    'Mcom.',
    'Msc',
    'Btech',
    'MCA',
    'BA',
    'Betech',
    'Bca',
    'BA',
    'BA',
    'MA'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                "Student List Who Use College Transport",
                textAlign: TextAlign.center,
                style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Colors.teal.shade900,
                          blurRadius: 5,
                          offset: const Offset(2, 2))
                    ],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(parent: null),
                      itemCount: arrRollno.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (() {}),
                          child: Card(
                            color: Colors.teal[700],
                            elevation: 5,
                            shadowColor: Colors.teal[500],
                            child: ListTile(
                                leading: InkWell(
                                  onTap: (() {
                                    // go to student Profile...
                                  }),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 50,
                                    backgroundImage:
                                        AssetImage("assets/images/img60.png"),
                                  ),
                                ),
                                title: Text(
                                  arrRollno[index],
                                  style: const TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                textColor: Colors.white,
                                subtitle: Text(arrclass[index]),
                                trailing: InkWell(
                                  onTap: (() {}),
                                  child: const Icon(
                                    Icons.info,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
