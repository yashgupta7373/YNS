// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yns_collage_management/pages/College%20Web/my_drawer_header.dart';
import '../../Widgets/home_page_widget.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromRGBO(100, 232, 222, 1.0),
      appBar: AppBar(
        title: const ProfileAppBar(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(165, 90, 255, 1.0),
              Color.fromRGBO(138, 100, 235, 1.0),
              Color.fromRGBO(100, 232, 222, 1.0),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            const HomePageWidget(),
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
                    Colors.teal.shade500.withOpacity(0.5),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  const Button2(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Button1(),
                      ContainerWidget(
                          text: 'Admin\nSettings',
                          icon: Icons.settings,
                          ontap: () {
                            showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      backgroundColor: const Color.fromRGBO(
                                          100, 232, 222, 0.7),
                                      content: SizedBox(
                                        // height: mediaQuery.size.height * 0.7,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextStyleWidget(
                                                text: 'Add Student',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons.userPlus,
                                              ),
                                              TextStyleWidget(
                                                text: 'Add Teacher Or Admin',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons.userPlus,
                                              ),
                                              TextStyleWidget(
                                                text: 'Edit Student Details',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons.userPen,
                                              ),
                                              TextStyleWidget(
                                                text:
                                                    'Edit Teacher Or Admin Details',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons.userPen,
                                              ),
                                              TextStyleWidget(
                                                text: 'Delete Student',
                                                ontap: (() {}),
                                                icon:
                                                    FontAwesomeIcons.userXmark,
                                              ),
                                              TextStyleWidget(
                                                text: 'Delete Teacher Or Admin',
                                                ontap: (() {}),
                                                icon:
                                                    FontAwesomeIcons.userXmark,
                                              ),
                                              TextStyleWidget(
                                                text: 'Add Courses',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons
                                                    .bookMedical,
                                              ),
                                              TextStyleWidget(
                                                text: 'Delete Courses',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons.trash,
                                              ),
                                              TextStyleWidget(
                                                text: 'Add Time Table',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons
                                                    .calendarPlus,
                                              ),
                                              TextStyleWidget(
                                                text: 'Add Marks',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons.marker,
                                              ),
                                              TextStyleWidget(
                                                text: 'Genrate Reports',
                                                ontap: (() {}),
                                                icon: FontAwesomeIcons.file,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ));
                          }),
                    ],
                  ),
                  const SizedBox(height: 80)
                ],
              )),
            ))
          ],
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(children: const [MyHeaderDrawer(), MyDrawerlist()]),
        ),
      ),
    );
  }
}
