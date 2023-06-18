// ignore_for_file: deprecated_member_use, non_constant_identifier_names, must_be_immutable
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_college_management/pages/Admin/Admin%20Settings/add_student_page.dart';
import 'package:yns_college_management/pages/College%20Web/my_drawer_header.dart';
import 'package:yns_college_management/pages/search_page.dart';
import '../../Widgets/call_class_room_and_online_class.dart';
import '../../Widgets/home_page_widget.dart';
import 'Admin/Admin Settings/add_courses_page.dart';
import 'Admin/Admin Settings/add_teachers_or_admin_page.dart';
import 'Admin/Admin Settings/edit.dart';

class HomePage extends StatefulWidget {
  String role;
  var username = "";
  var id = "";
  var profile = "";
  var department = "";
  var rollNo = "";
  var Class = "";
  var photo = "";
  HomePage(
      {super.key,
      required this.role,
      required this.Class,
      required this.rollNo,
      required this.department,
      required this.id,
      required this.profile,
      required this.username,
      required this.photo});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var userData = {};
  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  // getData() async {
  //   try {
  //     var snap = await FirebaseFirestore.instance
  //         .collection(widget.role)
  //         .doc(FirebaseAuth.instance.currentUser!.uid)
  //         .get();
  //     userData = snap.data()!;
  //     setState(() {});
  // } catch (e) {
  //   // showSnakBar(context, e.toString());
  // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: const Color.fromRGBO(100, 232, 222, 1.0),
        appBar: AppBar(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.username),
                  Row(children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  child: const SearchScreen()));
                        },
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
                      // width: double.infinity,
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
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 50,
                                    backgroundImage: NetworkImage(
                                      widget.photo,
                                    )),
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
                                                  text: (widget.role ==
                                                              'admin' ||
                                                          widget.role ==
                                                              'teacher')
                                                      ? TextSpan(
                                                          text: widget.username,
                                                          style: const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          children: [
                                                              const TextSpan(
                                                                  text: '\n'),
                                                              TextSpan(
                                                                  text:
                                                                      widget.id,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              const TextSpan(
                                                                  text: '\n'),
                                                              TextSpan(
                                                                  text: widget
                                                                      .profile,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              const TextSpan(
                                                                  text: '\n'),
                                                              TextSpan(
                                                                  text: widget
                                                                      .department,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                            ])
                                                      : TextSpan(
                                                          text: widget.username,
                                                          style: const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          children: [
                                                              const TextSpan(
                                                                  text: '\n'),
                                                              TextSpan(
                                                                  text: widget
                                                                      .rollNo,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              const TextSpan(
                                                                  text: '\n'),
                                                              TextSpan(
                                                                  text: widget
                                                                      .Class,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              const TextSpan(
                                                                  text: '\n'),
                                                              TextSpan(
                                                                  text: widget
                                                                      .department,
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
                      child: (widget.role == 'admin' ||
                              widget.role == 'teacher')
                          ? GridView.count(crossAxisCount: 2, children: [
                              const AttendanceTakerBtn(),
                              const CheckAttendanceBtn(),
                              LibraryBtn(role: widget.role),
                              CalendarBtn(role: widget.role),
                              const TimeTableBtn(),
                              const ResultBtn(),
                              const TransportBtn(),
                              NoticeBoardBtn(role: widget.role),
                              const IdCardBtn(),
                              HomeWorkBtn(role: widget.role),
                              const ApplyLeaveBtn(),
                              if (widget.role == 'admin')
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
                                                        text: 'Edit Student',
                                                        ontap: (() {
                                                          Navigator.push(
                                                              context,
                                                              PageTransition(
                                                                  type:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  child: Edit(
                                                                    role:
                                                                        'student',
                                                                  )));
                                                        }),
                                                        icon: FontAwesomeIcons
                                                            .userPen),
                                                    TextStyleWidget(
                                                        text: 'Edit Teacher',
                                                        ontap: (() {
                                                          Navigator.push(
                                                              context,
                                                              PageTransition(
                                                                  type:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  child: Edit(
                                                                    role:
                                                                        'teacher',
                                                                  )));
                                                        }),
                                                        icon: FontAwesomeIcons
                                                            .userPen),
                                                    TextStyleWidget(
                                                        text: 'Edit Admin',
                                                        ontap: (() {
                                                          Navigator.push(
                                                              context,
                                                              PageTransition(
                                                                  type:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  child: Edit(
                                                                    role:
                                                                        'admin',
                                                                  )));
                                                        }),
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
                                                        text: 'Edit Courses',
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
                              LibraryBtn(role: widget.role),
                              CalendarBtn(role: widget.role),
                              const TimeTableBtn(),
                              const ResultBtn(),
                              const TransportBtn(),
                              NoticeBoardBtn(role: widget.role),
                              const IdCardBtn(),
                              HomeWorkBtn(role: widget.role),
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
