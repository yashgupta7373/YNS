// ignore_for_file: must_be_immutable, non_constant_identifier_names, deprecated_member_use, camel_case_types, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yns_collage_management/Widgets/log_out.dart';
import '../../Widgets/call_class_room_and_online_class.dart';
import '../../Widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  String role;
  ProfilePage({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    String id = 'AD762372';
    String name = 'Sanjay Kumar';
    String profile = 'HOD';
    String department = 'Computer Science Dep.';
    if (role == 'Teachers') {
      id = 'TE89121';
      name = 'Ginni Dua';
      profile = 'Assistant Professor';
      department = 'Computer Science';
    }
    String studentName = 'Yash Gupta';
    String Class = 'BCA';
    String rollNo = 'SE723727';
    String phoneNo = '9056985643';
    int present = 86;
    int absent = 14;
    String session = '2020-2023';
    String fName = 'Sidhart Sharma';
    String mName = "Seta Sharma";
    String gender = ' ';
    String dob = '7-12-1999';
    String aadharNo = '123456789123';
    String category = 'general';
    String occupation = 'Business';
    String income = '1000000';
    String address = 'HB263, block 3, Mansenor Marcelo Neighborhood';
    String email = 'xyz@gmail.com';
    final subjects = ['C++', 'Java'];
    final language = ['English', 'Hindi'];
    int i = 0;
    return Scaffold(
        backgroundColor: Colors.teal[300],
        //aap bar
        appBar: AppBar(
            backgroundColor: Colors.teal[400],
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Id...
                  (role == 'Admin' || role == 'Teachers')
                      ? Text(id)
                      : (Text(rollNo)),
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                                                  Text(
                                                      (role == 'Admin' ||
                                                              role ==
                                                                  'Teachers')
                                                          ? name
                                                          : studentName,
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .teal[900])),
                                                  Text(
                                                      (role == 'Admin' ||
                                                              role ==
                                                                  'Teachers')
                                                          ? profile
                                                          : Class,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .teal[900])),
                                                  Text(department,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .teal[900])),
                                                  const SizedBox(height: 8),
                                                  if (role == 'Students')
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          profileWidget(
                                                              percent:
                                                                  '$present%',
                                                              name: 'PRESENTS'),
                                                          profileWidget(
                                                              percent:
                                                                  '$absent%',
                                                              name: 'ABSENTS')
                                                        ])
                                                ])))
                                  ]))
                            ])),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 60, right: 60, top: 20),
                        child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(5, 10),
                                      blurRadius: 20,
                                      color:
                                          Colors.teal.shade900.withOpacity(0.6))
                                ],
                                color: Colors.teal[600],
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.elliptical(120, 90))),
                            child: InkWell(
                                onTap: (() {
                                  launch('http://wa.me/+91$phoneNo');
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
                        if (role == 'Students')
                          AdminRowWidget(
                              text1: 'Academic Session:', text2: session),
                        // Id or RollNo
                        (role == 'Admin' || role == 'Teachers')
                            ? AdminRowWidget(text1: '$role Id:', text2: id)
                            : AdminRowWidget(text1: 'Roll-No.:', text2: rollNo),
                        // profile or class
                        (role == 'Admin' || role == 'Teachers')
                            ? AdminRowWidget(
                                text1: 'Job Profile:', text2: profile)
                            : AdminRowWidget(text1: 'Class:', text2: Class),
                        // Department
                        AdminRowWidget(text1: 'Department', text2: department),
                        // Subjects for teachers
                        if (role != 'Students')
                          AdminRowWidget(
                              text1: 'Subjects:',
                              text2: subjects[i]), // display all subjects...
                        // language for teachers
                        if (role != 'Students')
                          AdminRowWidget(
                              text1: 'Language:',
                              text2: language[i]), // display all language...
                        // Name
                        (role == 'Admin' || role == 'Teachers')
                            ? AdminRowWidget(text1: '$role Name:', text2: name)
                            : AdminRowWidget(
                                text1: 'Student Name:', text2: studentName),
                        // Father Name
                        AdminRowWidget(text1: 'Father\'s Name:', text2: fName),
                        // Mother Name
                        AdminRowWidget(text1: 'Mother\'s Name:', text2: mName),
                        // Date fo Birth
                        AdminRowWidget(text1: 'Date Of Birth:', text2: dob),
                        // Aadhar card number
                        AdminRowWidget(
                            text1: 'Aadhar Card No.:', text2: aadharNo),
                        // Gender
                        AdminRowWidget(text1: 'Gender:', text2: gender),
                        // Category
                        if (role == 'Students')
                          AdminRowWidget(text1: 'Category:', text2: category),
                        // Guardian's Occupation
                        if (role == 'Students')
                          AdminRowWidget(
                              text1: 'Guardian\'s Occupation:',
                              text2: occupation),
                        // Guardian's Income
                        if (role == 'Students')
                          AdminRowWidget(
                              text1: 'Guardian\'s Income:', text2: income),
                        // Address
                        AdminRowWidget(text1: 'Address:', text2: address),
                        // Phone Number
                        AdminRowWidget(text1: 'Phone Number:', text2: phoneNo),
                        // Email Id
                        AdminRowWidget(text1: 'Email Id:', text2: email),
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
        ]));
  }
}

// text widget for profile...
class profileWidget extends StatelessWidget {
  final percent, name;
  const profileWidget({Key? key, required this.percent, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: ('$percent\n'),
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(151, 0, 77, 64)),
            children: [
              TextSpan(
                  text: name,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(151, 0, 77, 64)))
            ]));
  }
}
