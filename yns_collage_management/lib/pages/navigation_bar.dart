// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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

  @override
  Widget build(BuildContext context) {
    final Screens = [
      HomePage(role: widget.role),
      const ClgWebPage(),
      const NotificationPage(),
      ProfilePage(role: widget.role)
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
