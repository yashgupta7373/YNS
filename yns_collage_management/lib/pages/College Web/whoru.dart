import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_collage_management/pages/Admin/admin_signup_page.dart';
import 'package:yns_collage_management/pages/Student/ssignup_page.dart';
import 'package:yns_collage_management/pages/Teacher/teachers_signup_page.dart';

class WhoRUPage extends StatelessWidget {
  const WhoRUPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Center(
              child: Text(
                "Login As",
                style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Colors.teal.shade900,
                          blurRadius: 5,
                          offset: const Offset(2, 2))
                    ],
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            // Admin
            Center(
              child: Container(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: const AdminSignUpPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 20,
                    shadowColor: Colors.teal[900],
                    side: BorderSide(
                        color: Colors.teal.shade500,
                        width: 2,
                        style: BorderStyle.solid),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0)),
                    minimumSize: const Size(200, 160),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.person_add_alt_1,
                        color: Colors.white,
                        size: 50,
                        shadows: <Shadow>[
                          Shadow(
                              color: Colors.teal.shade800,
                              blurRadius: 6.0,
                              offset: const Offset(2, 2))
                        ],
                      ),
                      Text(
                        "ADMIN",
                        style: TextStyle(shadows: [
                          Shadow(
                              color: Colors.teal.shade900,
                              blurRadius: 5,
                              offset: const Offset(2, 2))
                        ], fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Teacher
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: const TeachersSignUpPage()));
                },
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.teal[900],
                  side: BorderSide(
                      color: Colors.teal.shade500,
                      width: 2,
                      style: BorderStyle.solid),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)),
                  minimumSize: const Size(200, 160),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.people_alt,
                      color: Colors.white,
                      size: 50,
                      shadows: <Shadow>[
                        Shadow(
                            color: Colors.teal.shade800,
                            blurRadius: 6.0,
                            offset: const Offset(2, 2))
                      ],
                    ),
                    Text("TEACHER",
                        style: TextStyle(shadows: [
                          Shadow(
                              color: Colors.teal.shade900,
                              blurRadius: 5,
                              offset: const Offset(2, 2))
                        ], fontSize: 25, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            //Student
            Center(
              child: Container(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: const StudentSignUpPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 20,
                    shadowColor: Colors.teal[900],
                    side: BorderSide(
                        color: Colors.teal.shade500,
                        width: 2,
                        style: BorderStyle.solid),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0)),
                    minimumSize: const Size(200, 160),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                        shadows: <Shadow>[
                          Shadow(
                              color: Colors.teal.shade800,
                              blurRadius: 6.0,
                              offset: const Offset(2, 2))
                        ],
                      ),
                      Text("STUDENT",
                          style: TextStyle(shadows: [
                            Shadow(
                                color: Colors.teal.shade900,
                                blurRadius: 5,
                                offset: const Offset(2, 2))
                          ], fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
