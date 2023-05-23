// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yns_college_management/pages/College%20Web/clgweb_page.dart';
import 'package:yns_college_management/pages/College%20Web/notification.dart';
import 'package:yns_college_management/pages/profile_page.dart';
import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
  String role;
  BottomNavBar({super.key, required this.role});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  var username = "",
      session = "",
      id = "",
      rollNo = "",
      // studentName = "",
      profile = "",
      Class = "",
      department = "",
      // present = "",
      // absent = "",
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
      // i = 0,
      address = "";
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
        id = (snap.data() as Map<String, dynamic>)['id'];
        username = (snap.data() as Map<String, dynamic>)['name'];
        profile = (snap.data() as Map<String, dynamic>)['profile'];
        department = (snap.data() as Map<String, dynamic>)['department'];
        subject = (snap.data() as Map<String, dynamic>)['subject'];
        language = (snap.data() as Map<String, dynamic>)['language'];
        fName = (snap.data() as Map<String, dynamic>)['fName'];
        mName = (snap.data() as Map<String, dynamic>)['mName'];
        dob = (snap.data() as Map<String, dynamic>)['dob'];
        aadharNo = (snap.data() as Map<String, dynamic>)['aadharNo.'];
        gender = (snap.data() as Map<String, dynamic>)['gender'];
        address = (snap.data() as Map<String, dynamic>)['address'];
        phoneNo = (snap.data() as Map<String, dynamic>)['phoneNo'];
        email = (snap.data() as Map<String, dynamic>)['email'];
      });
    } else {
      setState(() {
        rollNo = (snap.data() as Map<String, dynamic>)['rollNo.'];
        Class = (snap.data() as Map<String, dynamic>)['Class'];
        department = (snap.data() as Map<String, dynamic>)['department'];
        // present = '87';
        // = (snap.data() as Map<String, dynamic>)['department'];
        // absent = '13';
        // = (snap.data() as Map<String, dynamic>)['department'];
        session = (snap.data() as Map<String, dynamic>)['session'];
        username = (snap.data() as Map<String, dynamic>)['name'];
        fName = (snap.data() as Map<String, dynamic>)['fName'];
        mName = (snap.data() as Map<String, dynamic>)['mName'];
        dob = (snap.data() as Map<String, dynamic>)['dob'];
        aadharNo = (snap.data() as Map<String, dynamic>)['aadharNo.'];
        gender = (snap.data() as Map<String, dynamic>)['gender'];
        category = (snap.data() as Map<String, dynamic>)['category'];
        occupation = (snap.data() as Map<String, dynamic>)['gOccupation'];
        income = (snap.data() as Map<String, dynamic>)['gIncome'];
        address = (snap.data() as Map<String, dynamic>)['address'];
        phoneNo = (snap.data() as Map<String, dynamic>)['phoneNo.'];
        email = (snap.data() as Map<String, dynamic>)['email'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Screens = [
      // HomePage(role: widget.role),
      HomePage(
          role: widget.role,
          Class: Class,
          rollNo: rollNo,
          // studentName: username,
          department: department,
          id: id,
          profile: profile,
          username: username),
      const ClgWebPage(),
      const NotificationPage(),
      ProfilePage(
          role: widget.role,
          Class: Class,
          aadharNo: aadharNo,
          address: address,
          category: category,
          department: department,
          dob: dob,
          email: email,
          fName: fName,
          gender: gender,
          id: id,
          income: income,
          language: language,
          mName: mName,
          occupation: occupation,
          phoneNo: phoneNo,
          profile: profile,
          rollNo: rollNo,
          session: session,
          // studentName: studentName,
          subject: subject,
          username: username)
      // Test(role: widget.role)
      // Try()
    ];
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.school, size: 30),
      const Icon(Icons.notifications, size: 30),
      const Icon(Icons.person, size: 30)
    ];
    return Container(
        color: Colors.teal.shade800,
        child: SafeArea(
            top: false,
            child: ClipRRect(
                child: Scaffold(
                    extendBody: true,
                    backgroundColor: Colors.teal[300],
                    body: Screens[index],
                    bottomNavigationBar: Theme(
                        data: Theme.of(context).copyWith(
                            iconTheme:
                                const IconThemeData(color: Colors.white)),
                        child: CurvedNavigationBar(
                            key: navigationKey,
                            backgroundColor: Colors.transparent,
                            buttonBackgroundColor:
                                Colors.teal.shade300.withOpacity(0.8),
                            color: Colors.teal.shade400,
                            items: items,
                            height: 60,
                            index: index,
                            onTap: (index) =>
                                setState(() => this.index = index)))))));
  }
}
