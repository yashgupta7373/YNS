// App bar For Home Page
// ignore_for_file: deprecated_member_use

import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_collage_management/pages/Apply%20Leave/apply_leave.dart';
import 'package:yns_collage_management/pages/Attendance/attendance_form.dart';
import 'package:yns_collage_management/pages/Calender/calender.dart';
import 'package:yns_collage_management/pages/Check%20Attendance/check_attendance.dart';
import 'package:yns_collage_management/pages/Home%20Work/home_work.dart';
import 'package:yns_collage_management/pages/Id%20Card/id_card.dart';
import 'package:yns_collage_management/pages/Library/issue_book.dart';
import 'package:yns_collage_management/pages/Notice%20Board/notice_board.dart';
import 'package:yns_collage_management/pages/Result/result.dart';
import 'package:yns_collage_management/pages/Time%20Table/time_table.dart';
import 'package:yns_collage_management/pages/Transport/transport.dart';
import '../pages/Library/return_book.dart';
import 'call_class_room_and_online_class.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Hello Yash!'),
        Row(
          children: [
            InkWell(
                onTap: () {},
                child: const Icon(
                  FontAwesomeIcons.search,
                  color: Colors.white, //Color Of Icon
                )),
            const SizedBox(width: 10),
            const CallClasses(),
            const SizedBox(width: 20),
            InkWell(
                onTap: () async {
                  // Navigator.push(
                  //   context,
                  //   PageTransition(
                  //     type: PageTransitionType.rightToLeft,
                  //     child: const Chat(),
                  //   ),
                  // );
                  await LaunchApp.openApp(
                    androidPackageName: 'com.whatsapp',
                    iosUrlScheme:
                        'https://www.apple.com/us/search/whatsapp?src=globalnav',
                    openStore: true,
                  );
                },
                child: const Icon(
                  FontAwesomeIcons.facebookMessenger,
                  color: Colors.white,
                )),
          ],
        ),
      ],
    );
  }
}

// Name Card For Admin and Teacher Profile

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(100, 232, 222, 1.0),
                Color.fromRGBO(138, 120, 235, 1.0),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(5, 10),
                  blurRadius: 20,
                  color: Colors.teal.shade900.withOpacity(0.2))
            ],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(80))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                backgroundImage: AssetImage("assets/images/img60.png"),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          softWrap: true,
                          text: TextSpan(
                              text: 'Yash Gupta\n',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: '[HOD]\n',
                                    style: TextStyle(fontSize: 18)),
                                TextSpan(
                                    text: 'Computer Science Teacher',
                                    style: TextStyle(fontSize: 15)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Container Widget....
class ContainerWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  const ContainerWidget(
      {Key? key, required this.text, required this.icon, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        height: mediaQuery.size.width * 0.35,
        width: mediaQuery.size.width * 0.35,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.teal.shade100,
                Colors.teal.shade300,
                Colors.teal.shade500,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(40))),
        child: ElevatedButton(
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
            elevation: 20,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.teal[800],
            side: BorderSide(
                color: Colors.teal.shade500,
                width: 2,
                style: BorderStyle.solid),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)),
            minimumSize: const Size(200, 160),
          ),
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 300,
                    shadows: <Shadow>[
                      Shadow(
                          color: Colors.teal.shade800,
                          blurRadius: 6.0,
                          offset: const Offset(2, 2))
                    ],
                  ),
                  Text(text,
                      textAlign: TextAlign.center,
                      style: TextStyle(shadows: [
                        Shadow(
                            color: Colors.teal.shade900,
                            blurRadius: 5,
                            offset: const Offset(2, 2))
                      ], fontSize: 80, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Button 1 for Admin And Teachers Home Page
class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        text: 'Apply\nLeave',
        icon: FontAwesomeIcons.personWalking,
        ontap: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: const ApplyLeave()));
        });
  }
}

// Button 2 for Admin And Teachers Home Page
class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Attendance Taker
          ContainerWidget(
              text: 'Attendance\nTaker',
              icon: Icons.edit_calendar,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const AttendanceForm()));
              }),
          // Check Attendance
          ContainerWidget(
              text: 'Check\nAttendance',
              icon: FontAwesomeIcons.calendarCheck,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const CheckAttendance()));
              }),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Library
          ContainerWidget(
              text: 'Library    ',
              icon: Icons.local_library,
              ontap: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          backgroundColor:
                              const Color.fromRGBO(100, 232, 222, 0.7),
                          content: SizedBox(
                            // height: mediaQuery.size.height * 0.7,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextStyleWidget(
                                    text: 'Issue Book',
                                    ontap: (() {
                                      Navigator.of(ctx).pop();

                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType.fade,
                                              child: const IssueBook()));
                                    }),
                                    icon: FontAwesomeIcons.book,
                                  ),
                                  TextStyleWidget(
                                    text: 'Return Book',
                                    ontap: (() {
                                      Navigator.of(ctx).pop();

                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType.fade,
                                              child: const ReturnBook()));
                                    }),
                                    icon: FontAwesomeIcons.book,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ));
              }),
          // calender
          ContainerWidget(
              text: 'Calender',
              icon: FontAwesomeIcons.calendar,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const Claender()));
              }),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Time Table
          ContainerWidget(
              text: 'Time Table',
              icon: FontAwesomeIcons.clock,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const TimeTable()));
              }),
          // Result
          ContainerWidget(
              text: 'Result        ',
              icon: FontAwesomeIcons.chartLine,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const Result()));
              }),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Transport
          ContainerWidget(
              text: 'Transport',
              icon: FontAwesomeIcons.bus,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const Transport()));
              }),
          // Notice Board
          ContainerWidget(
              text: 'Notice\nBoard',
              icon: FontAwesomeIcons.volumeHigh,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const NoticeBoard()));
              }),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Id card
          ContainerWidget(
              text: 'ID Card',
              icon: FontAwesomeIcons.idCard,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const IdCard()));
              }),
          // Home Work
          ContainerWidget(
              text: 'Home\nWork',
              icon: FontAwesomeIcons.pen,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const HomeWork()));
              }),
        ],
      ),
    ]);
  }
}

//Text Style For Admin Settings

class TextStyleWidget extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final IconData icon;
  const TextStyleWidget(
      {Key? key, required this.text, required this.ontap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.teal[900],
        ),
        TextButton(
            onPressed: ontap,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal[900],
                  fontStyle: FontStyle.normal),
            )),
      ],
    );
  }
}
