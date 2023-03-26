// ignore_for_file: file_names, non_constant_identifier_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:yns_collage_management/pages/College%20Web/clgweb_page.dart';
import 'package:yns_collage_management/pages/College%20Web/noti.dart';
import 'package:yns_collage_management/pages/Teacher/teachers_home_page.dart';
import 'package:yns_collage_management/pages/Teacher/teachers_profile.dart';

class TeachersBottomnavBar extends StatefulWidget {
  const TeachersBottomnavBar({super.key});

  @override
  State<TeachersBottomnavBar> createState() => _TeachersBottomnavBarState();
}

class _TeachersBottomnavBarState extends State<TeachersBottomnavBar> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final Screens = [
    const TeachersHomePage(),
    const ClgWebPage(),
    const Noti(),
    const TeachersProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.school,
        size: 30,
      ),
      const Icon(
        Icons.notifications,
        size: 30,
      ),
      const Icon(
        Icons.person,
        size: 30,
      ),
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
                  iconTheme: const IconThemeData(color: Colors.white)),
              child: CurvedNavigationBar(
                key: navigationKey,
                backgroundColor: Colors.transparent,
                buttonBackgroundColor: Colors.teal.shade300.withOpacity(0.8),
                color: Colors.teal.shade400,
                items: items,
                height: 60,
                index: index,
                onTap: (index) => setState(() => this.index = index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
