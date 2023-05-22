// ignore_for_file: deprecated_member_use, non_constant_identifier_names, must_be_immutable
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_college_management/Widgets/log_out.dart';
import 'package:yns_college_management/pages/Admin/Admin%20Settings/add_student_page.dart';
import 'package:yns_college_management/pages/College%20Web/my_drawer_header.dart';
import '../../Widgets/call_class_room_and_online_class.dart';
import '../../Widgets/home_page_widget.dart';
import 'Admin/Admin Settings/add_courses_page.dart';
import 'Admin/Admin Settings/add_teachers_or_admin_page.dart';

class HomePage extends StatefulWidget {
  String role;
  HomePage({super.key, required this.role});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var username = "";
  var userId = "";
  var userProfile = "";
  var userDepartment = "";
  var studentName = "";
  var rollNo = "";
  var Class = "";
  @override
  void initState() {
    super.initState();
    getUsername();
  }

  void getUsername() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection(widget.role)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    print(snap.data());
    print(snap);
    if (widget.role == 'Admin' || widget.role == 'Teachers') {
      setState(() {
        username = (snap.data() as Map<String, dynamic>)['name'];
        userId = (snap.data() as Map<String, dynamic>)['id'];
        userProfile = (snap.data() as Map<String, dynamic>)['profile'];
        userDepartment = (snap.data() as Map<String, dynamic>)['department'];
      });
    } else {
      username = (snap.data() as Map<String, dynamic>)['name'];
      rollNo = (snap.data() as Map<String, dynamic>)['rollNo.'];
      Class = (snap.data() as Map<String, dynamic>)['Class'];
      userDepartment = (snap.data() as Map<String, dynamic>)['department'];
    }
    // setState(() {
    //   username = (snap.data() as Map<String, dynamic>)['name'];
    //   userId = (snap.data() as Map<String, dynamic>)['id'];
    //   userProfile = (snap.data() as Map<String, dynamic>)['profile'];
    //   // rollNo = (snap.data() as Map<String, dynamic>)['rollNo.'];
    //   userDepartment = (snap.data() as Map<String, dynamic>)['department'];
    //   // C = (snap.data() as Map<String, dynamic>)['Class'];
    //   // studentName = (snap.data() as Map<String, dynamic>)['name'];
    // });
  }

  @override
  Widget build(BuildContext context) {
    // String id = 'AD762372';
    // // String name = 'Sanjay Kumar';
    // String department = 'Computer Science Dep.';
    // String profile = 'HOD';
    // if (widget.role == 'Teachers') {
    //   id = 'TE89121';
    //   // name = 'Ginni Dua';
    //   profile = 'Assistant Professor';
    //   department = 'Computer Science Dep.';
    // }
    // String rollNo = 'SE723727';
    // String studentName = 'Yash Gupta';
    // String Class = 'Bca';
    return Scaffold(
        extendBody: true,
        backgroundColor: const Color.fromRGBO(100, 232, 222, 1.0),
        appBar: AppBar(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // (widget.role == 'Admin' || widget.role == 'Teachers')
                  //     ? Text(username):
                  Text(username),
                  Row(children: [
                    InkWell(
                        onTap: () {},
                        child: const Icon(FontAwesomeIcons.search,
                            color: Colors.white)),
                    const SizedBox(width: 10),
                    const CallClasses(),
                    LogOut(),
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
                                                  text: (widget.role ==
                                                              'Admin' ||
                                                          widget.role ==
                                                              'Teachers')
                                                      ? TextSpan(
                                                          text: '$username\n',
                                                          style: const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          children: [
                                                              TextSpan(
                                                                  text:
                                                                      '$userId\n',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              TextSpan(
                                                                  text:
                                                                      '[$userProfile]\n',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                              TextSpan(
                                                                  text:
                                                                      userDepartment,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15)),
                                                            ])
                                                      : TextSpan(
                                                          text: '$username\n',
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
                                                                      userDepartment,
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
                      child: (widget.role == 'Admin' ||
                              widget.role == 'Teachers')
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
                              if (widget.role == 'Admin')
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
