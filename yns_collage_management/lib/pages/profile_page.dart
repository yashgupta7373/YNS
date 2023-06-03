// ignore_for_file: must_be_immutable, non_constant_identifier_names, deprecated_member_use, camel_case_types, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yns_college_management/Widgets/log_out.dart';
import '../../Widgets/call_class_room_and_online_class.dart';
import '../../Widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  var role = "",
      username = "",
      session = "",
      id = "",
      rollNo = "",
      profile = "",
      Class = "",
      department = "",
      phoneNo = "",
      fName = "",
      mName = "",
      dob = "",
      subject = "",
      language = "",
      aadharNo = "",
      gender = "",
      category = "",
      occupation = "",
      email = "",
      income = "",
      address = "";
  ProfilePage(
      {super.key,
      required this.role,
      required this.Class,
      required this.aadharNo,
      required this.address,
      required this.category,
      required this.department,
      required this.dob,
      required this.email,
      required this.fName,
      required this.gender,
      required this.id,
      required this.income,
      required this.language,
      required this.mName,
      required this.occupation,
      required this.phoneNo,
      required this.profile,
      required this.rollNo,
      required this.session,
      required this.subject,
      required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var present = "86", absent = "14";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      //aap bar
      appBar: AppBar(
          backgroundColor: Colors.teal[400],
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // Id...
            (widget.role == 'admin' || widget.role == 'teacher')
                ? Text(widget.id)
                : (Text(widget.rollNo)),
            Row(children: const [
              // google classroom, zoom, and logout...
              CallClasses(),
              SizedBox(width: 20),
              LogOut()
            ])
          ]),
          elevation: 0),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.teal[400],
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.elliptical(120, 90))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: const EdgeInsets.only(top: 8, left: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            backgroundImage:
                                AssetImage("assets/images/img60.png")),
                        Expanded(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, bottom: 15),
                                  child: SizedBox(
                                      width: 180,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(widget.username,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.teal[900])),
                                            Text(
                                                (widget.role == 'admin' ||
                                                        widget.role ==
                                                            'teacher')
                                                    ? widget.profile
                                                    : widget.Class,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.teal[900])),
                                            Text(widget.department,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.teal[900])),
                                            const SizedBox(height: 8),
                                            if (widget.role == 'student')
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    profileWidget(
                                                        percent: '$present%',
                                                        name: 'PRESENTS'),
                                                    profileWidget(
                                                        percent: '$absent%',
                                                        name: 'ABSENTS')
                                                  ])
                                          ])))
                            ]))
                      ])),
              Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 20),
                  child: Container(
                      width: double.infinity,
                      height: 35,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(5, 10),
                                blurRadius: 20,
                                color: Colors.teal.shade900.withOpacity(0.6))
                          ],
                          color: Colors.teal[600],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.elliptical(120, 90))),
                      child: InkWell(
                          onTap: (() {
                            var number = widget.phoneNo;
                            launch('http://wa.me/+91$number');
                          }),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(FontAwesomeIcons.facebookMessenger,
                                    color: Colors.white),
                                SizedBox(width: 8),
                                Text('Message',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))
                              ])))),
              const SizedBox(height: 20)
            ])),
        Expanded(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(children: [
                      // academic session
                      if (widget.role == 'student')
                        AdminRowWidget(
                            text1: 'Academic Session:', text2: widget.session),
                      // Id or RollNo
                      (widget.role == 'admin' || widget.role == 'teacher')
                          ? AdminRowWidget(
                              text1: '${widget.role} Id:', text2: widget.id)
                          : AdminRowWidget(
                              text1: 'Roll-No.:', text2: widget.rollNo),
                      // profile or class
                      (widget.role == 'admin' || widget.role == 'teacher')
                          ? AdminRowWidget(
                              text1: 'Job Profile:', text2: widget.profile)
                          : AdminRowWidget(
                              text1: 'Class:', text2: widget.Class),
                      // Department
                      AdminRowWidget(
                          text1: 'Department', text2: widget.department),
                      // Subjects for teachers
                      if (widget.role != 'student')
                        AdminRowWidget(
                            text1: 'Subjects:',
                            text2: widget.subject), // display all subjects...
                      // language for teachers
                      if (widget.role != 'student')
                        AdminRowWidget(
                            text1: 'Language:',
                            text2: widget.language), // display all language...
                      // Name
                      (widget.role == 'admin' || widget.role == 'teacher')
                          ? AdminRowWidget(
                              text1: '${widget.role} Name:',
                              text2: widget.username)
                          : AdminRowWidget(
                              text1: 'Student Name:', text2: widget.username),
                      // Father Name
                      AdminRowWidget(
                          text1: 'Father\'s Name:', text2: widget.fName),
                      // Mother Name
                      AdminRowWidget(
                          text1: 'Mother\'s Name:', text2: widget.mName),
                      // Date fo Birth
                      AdminRowWidget(
                          text1: 'Date Of Birth:', text2: widget.dob),
                      // Aadhar card number
                      AdminRowWidget(
                          text1: 'Aadhar Card No.:', text2: widget.aadharNo),
                      // Gender
                      AdminRowWidget(text1: 'Gender:', text2: widget.gender),
                      // Category
                      if (widget.role == 'student')
                        AdminRowWidget(
                            text1: 'Category:', text2: widget.category),
                      // Guardian's Occupation
                      if (widget.role == 'student')
                        AdminRowWidget(
                            text1: 'Guardian\'s Occupation:',
                            text2: widget.occupation),
                      // Guardian's Income
                      if (widget.role == 'student')
                        AdminRowWidget(
                            text1: 'Guardian\'s Income:', text2: widget.income),
                      // Address
                      AdminRowWidget(text1: 'Address:', text2: widget.address),
                      // Phone Number
                      AdminRowWidget(
                          text1: 'Phone Number:', text2: widget.phoneNo),
                      // Email Id
                      AdminRowWidget(text1: 'Email Id:', text2: widget.email),
                      const SizedBox(height: 10),
                      // social media icon
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: Icon(FontAwesomeIcons.facebook,
                                    color: Colors.teal[800])),
                            InkWell(
                                onTap: () {},
                                child: Icon(FontAwesomeIcons.instagram,
                                    color: Colors.teal[800])),
                            InkWell(
                                onTap: () {},
                                child: Icon(FontAwesomeIcons.twitter,
                                    color: Colors.teal[800])),
                            InkWell(
                                onTap: () {},
                                child:
                                    Icon(Icons.mail, color: Colors.teal[800]))
                          ]),
                      const SizedBox(height: 60)
                    ]))))
      ]),
    );
  }
}
