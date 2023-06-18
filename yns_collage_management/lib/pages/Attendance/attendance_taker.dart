// ignore_for_file: non_constant_identifier_names, must_be_immutable, prefer_typing_uninitialized_variables
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AttendanceTaker extends StatefulWidget {
  var uid, date, Class, subject;
  // DateTime date;
  AttendanceTaker(
      {required this.uid,
      required this.date,
      required this.Class,
      required this.subject,
      super.key});

  @override
  State<AttendanceTaker> createState() => _AttendanceTakerState();
}

class _AttendanceTakerState extends State<AttendanceTaker> {
  //listTile
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
  List<String> arrName = [
    'Raman',
    'Ramnaujan',
    'Rajesh',
    'James',
    'Rahim',
    'Ram',
    'Raman',
    'Ramnaujan',
    'Rajesh',
    'James',
    'Rahim',
    'Ram'
  ];
  List<bool> presentArray = [];

  int _totalPresent = 0;

  void countPresentStudent() {
    setState(() {
      _totalPresent = presentArray.where((present) => present).length;
    });
  }

  var name = '', photoUrl = '';

  @override
  void initState() {
    super.initState();
    getUsername();
  }

  void getUsername() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(widget.uid)
        .get();
    setState(() {
      name = (snap.data() as Map<String, dynamic>)['name'];
      photoUrl = (snap.data() as Map<String, dynamic>)['photoUrl'];
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var date = widget.date;
    var Class = widget.Class;
    var subject = widget.subject;
    int totalStudent = arrRollno.length;
    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
            title: const Text('Attendance Taker'),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: Column(children: [
          Center(
            child: Container(
              // height: 180,
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
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 40,
                                backgroundImage: NetworkImage(photoUrl)),
                            const SizedBox(width: 10),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Date: $date',
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text('Class: $Class',
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text('Subject: $subject',
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text('Teacher: $name',
                                      style: const TextStyle(
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
                                Text(
                                  '$totalStudent',
                                  style: const TextStyle(
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
                                    Text(
                                      '$_totalPresent',
                                      style: const TextStyle(
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
          // Expanded(
          //     child: SingleChildScrollView(
          //         child: Column(children: [
          //   ListView.builder(
          //       shrinkWrap: true,
          //       physics: const ScrollPhysics(parent: null),
          //       itemCount: arrRollno.length,
          //       itemBuilder: (context, index) {
          //         return InkWell(
          //             onTap: () {
          //               setState(() {
          //                 presentArray[index] = !presentArray[index];
          //               });
          //               countPresentStudent();
          //             },
          //             child: Card(
          //                 color: Colors.teal[700],
          //                 elevation: 5,
          //                 shadowColor:
          //                     presentArray[index] ? Colors.green : Colors.red,
          //                 child: ListTile(
          //                     leading: InkWell(
          //                         onTap: (() {
          //                           // go to student Profile...
          //                         }),
          //                         child: const CircleAvatar(
          //                             backgroundColor: Colors.white,
          //                             radius: 50,
          //                             backgroundImage: AssetImage(
          //                                 "assets/images/img60.png"))),
          //                     title: Text(arrRollno[index],
          //                         style: const TextStyle(
          //                             fontStyle: FontStyle.normal,
          //                             fontWeight: FontWeight.bold,
          //                             fontSize: 14)),
          //                     textColor: Colors.white,
          //                     subtitle: Text(arrName[index]),
          //                     trailing: Container(
          //                         height: 40,
          //                         width: 90,
          //                         decoration: BoxDecoration(
          //                           borderRadius: const BorderRadius.all(
          //                               Radius.circular(10)),
          //                           color: presentArray[index]
          //                               ? Colors.red
          //                               : Colors.green,
          //                         ),
          //                         child: Center(
          //                             child: Text(
          //                           presentArray[index] ? 'Absent' : 'Present',
          //                         ))))));
          //       }),
          //   Padding(
          //       padding: const EdgeInsets.all(20),
          //       child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             // Reset button
          //             ElevatedButton(
          //               onPressed: () {
          //                 // Reset all Attendance...
          //               },
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Colors.teal[700],
          //                 elevation: 20,
          //                 shadowColor: Colors.teal[900],
          //                 side: BorderSide(
          //                     color: Colors.teal.shade700,
          //                     width: 2,
          //                     style: BorderStyle.solid),
          //                 shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(15.0)),
          //                 minimumSize: const Size(150, 60),
          //               ),
          //               child: const Text('Reset'),
          //             ),
          //             //Done button
          //             ElevatedButton(
          //                 onPressed: () {
          //                   Navigator.push(
          //                       context,
          //                       PageTransition(
          //                           type: PageTransitionType.rightToLeft,
          //                           child: const AttendanceOverViwe()));
          //                 },
          //                 style: ElevatedButton.styleFrom(
          //                     backgroundColor: Colors.teal[700],
          //                     elevation: 20,
          //                     shadowColor: Colors.teal[900],
          //                     side: BorderSide(
          //                         color: Colors.teal.shade700,
          //                         width: 2,
          //                         style: BorderStyle.solid),
          //                     shape: RoundedRectangleBorder(
          //                         borderRadius: BorderRadius.circular(15.0)),
          //                     minimumSize: const Size(150, 60)),
          //                 child: const Text('Done'))
          //           ]))
          // ])))
        ]));
  }
}
