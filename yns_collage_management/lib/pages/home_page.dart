// ignore_for_file: deprecated_member_use, non_constant_identifier_names, must_be_immutable
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_collage_management/pages/Admin/Admin%20Settings/add_student_page.dart';
import 'package:yns_collage_management/pages/College%20Web/my_drawer_header.dart';
import '../../Widgets/call_class_room_and_online_class.dart';
import '../../Widgets/home_page_widget.dart';
import 'Admin/Admin Settings/add_courses_page.dart';
import 'Admin/Admin Settings/add_teachers_or_admin_page.dart';

class HomePage extends StatelessWidget {
  String role;
  HomePage({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    String name = 'Ginni Dua';
    String studentName = 'Yash Gupta';
    String Class = 'Bca';
    String profile = 'HOD';
    String department = 'Computer Science';
    String id = 'AD762372';
    String rollNo = 'SE723727';
    return Scaffold(
        extendBody: true,
        backgroundColor: const Color.fromRGBO(100, 232, 222, 1.0),
        appBar: AppBar(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (role == 'Admin' || role == 'Teacher')
                      ? Text(name)
                      : Text(studentName),
                  Row(children: [
                    InkWell(
                        onTap: () {},
                        child: const Icon(FontAwesomeIcons.search,
                            color: Colors.white)),
                    const SizedBox(width: 10),
                    const CallClasses(),
                    const SizedBox(width: 20),
                    InkWell(
                        onTap: () async {
                          await LaunchApp.openApp(
                              androidPackageName: 'com.whatsapp',
                              iosUrlScheme:
                                  'https://www.apple.com/us/search/whatsapp?src=globalnav',
                              openStore: true);
                        },
                        child: const Icon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.white))
                  ])
                ]),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(165, 90, 255, 1.0),
              Color.fromRGBO(138, 100, 235, 1.0),
              Color.fromRGBO(100, 232, 222, 1.0),
            ], begin: Alignment.bottomLeft, end: Alignment.centerRight)),
            child: Column(children: [
              // Name Card...
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(100, 232, 222, 1.0),
                                Color.fromRGBO(138, 120, 235, 1.0)
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight),
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
                                const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 50,
                                    backgroundImage:
                                        AssetImage("assets/images/img60.png")),
                                Expanded(
                                    child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: FittedBox(
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                              RichText(
                                                  softWrap: true,
                                                  text: (role == 'Admin' ||
                                                          role == 'Teacher')
                                                      ? TextSpan(
                                                          text: '$name\n',
                                                          style: const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          children: [
                                                              TextSpan(
                                                                  text: '$id\n',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              TextSpan(
                                                                  text:
                                                                      '[$profile]\n',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              TextSpan(
                                                                  text:
                                                                      department,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                            ])
                                                      : TextSpan(
                                                          text:
                                                              '$studentName\n',
                                                          style: const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          children: [
                                                              TextSpan(
                                                                  text:
                                                                      '$rollNo\n',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              TextSpan(
                                                                  text:
                                                                      '$Class\n',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              TextSpan(
                                                                  text:
                                                                      department,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15))
                                                            ]))
                                            ]))))
                              ])))),
              Expanded(
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          gradient: LinearGradient(
                              colors: [
                                Colors.teal.shade700.withOpacity(0.1),
                                Colors.teal.shade500.withOpacity(0.5)
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight)),
                      // for Admin & teacher...
                      child: (role == 'Admin' || role == 'Teacher')
                          ? GridView.count(crossAxisCount: 2, children: [
                              const AttendanceTakerBtn(),
                              const CheckAttendanceBtn(),
                              LibraryBtn(role: role),
                              CalendarBtn(role: role),
                              const TimeTableBtn(),
                              const ResultBtn(),
                              const TransportBtn(),
                              NoticeBoardBtn(role: role),
                              const IdCardBtn(),
                              HomeWorkBtn(role: role),
                              const ApplyLeaveBtn(),
                              if (role == 'Admin')
                                // Admin Settings
                                ContainerWidget(
                                    text: 'Admin\nSettings',
                                    icon: Icons.settings,
                                    ontap: () {
                                      showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                      100, 232, 222, 0.7),
                                              content: SizedBox(
                                                  child: SingleChildScrollView(
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                    TextStyleWidget(
                                                        text: 'Add Student',
                                                        ontap: (() {
                                                          Navigator.push(
                                                              context,
                                                              PageTransition(
                                                                  type:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  child:
                                                                      const SRegistrationPage()));
                                                        }),
                                                        icon: FontAwesomeIcons
                                                            .userPlus),
                                                    TextStyleWidget(
                                                        text:
                                                            'Add Teacher Or Admin',
                                                        ontap: (() {
                                                          Navigator.push(
                                                              context,
                                                              PageTransition(
                                                                  type:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  child:
                                                                      const TRegistrationPage()));
                                                        }),
                                                        icon: FontAwesomeIcons
                                                            .userPlus),
                                                    TextStyleWidget(
                                                        text:
                                                            'Edit Student Details',
                                                        ontap: (() {}),
                                                        icon: FontAwesomeIcons
                                                            .userPen),
                                                    TextStyleWidget(
                                                        text:
                                                            'Edit Teacher Or Admin Details',
                                                        ontap: (() {}),
                                                        icon: FontAwesomeIcons
                                                            .userPen),
                                                    TextStyleWidget(
                                                        text: 'Delete Student',
                                                        ontap: (() {}),
                                                        icon: FontAwesomeIcons
                                                            .userXmark),
                                                    TextStyleWidget(
                                                        text:
                                                            'Delete Teacher Or Admin',
                                                        ontap: (() {}),
                                                        icon: FontAwesomeIcons
                                                            .userXmark),
                                                    TextStyleWidget(
                                                        text: 'Add Courses',
                                                        ontap: (() {
                                                          Navigator.push(
                                                              context,
                                                              PageTransition(
                                                                  type:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  child:
                                                                      const AddCoursesPage()));
                                                        }),
                                                        icon: FontAwesomeIcons
                                                            .bookMedical),
                                                    TextStyleWidget(
                                                        text: 'Delete Courses',
                                                        ontap: (() {}),
                                                        icon: FontAwesomeIcons
                                                            .trash),
                                                    TextStyleWidget(
                                                        text: 'Add Time Table',
                                                        ontap: (() {}),
                                                        icon: FontAwesomeIcons
                                                            .calendarPlus),
                                                    TextStyleWidget(
                                                        text: 'Add Marks',
                                                        ontap: (() {}),
                                                        icon: FontAwesomeIcons
                                                            .marker),
                                                    TextStyleWidget(
                                                        text:
                                                            'Generate Reports',
                                                        ontap: (() {}),
                                                        icon: FontAwesomeIcons
                                                            .file)
                                                  ])))));
                                    })
                            ])
                          // for Student...
                          : GridView.count(crossAxisCount: 2, children: [
                              const CheckAttendanceBtn(),
                              LibraryBtn(role: role),
                              CalendarBtn(role: role),
                              const TimeTableBtn(),
                              const ResultBtn(),
                              const TransportBtn(),
                              NoticeBoardBtn(role: role),
                              const IdCardBtn(),
                              HomeWorkBtn(role: role),
                              const ApplyLeaveBtn()
                            ])))
            ])),
        // App Drawer
        drawer: Drawer(
            child: SingleChildScrollView(
                child: Column(
                    children: const [MyHeaderDrawer(), MyDrawerlist()]))));
  }
}
