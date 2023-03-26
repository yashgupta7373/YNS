// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:yns_collage_management/pages/Admin/admin_home_page.dart';
import 'package:yns_collage_management/pages/Admin/admin_profile.dart';
import 'package:yns_collage_management/pages/College%20Web/clgweb_page.dart';
import 'package:yns_collage_management/pages/College%20Web/noti.dart';

class AdminBottomnavBar extends StatefulWidget {
  const AdminBottomnavBar({super.key});

  @override
  State<AdminBottomnavBar> createState() => _AdminBottomnavBarState();
}

class _AdminBottomnavBarState extends State<AdminBottomnavBar> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  // ignore: non_constant_identifier_names
  final Screens = [
    const AdminHomePage(),
    const ClgWebPage(),
    const Noti(),
    const AdminProfile(),
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
