import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../navigation_bar.dart';

class BackPage extends StatefulWidget {
  const BackPage({super.key});
  @override
  State<BackPage> createState() => _BackPageState();
}

class _BackPageState extends State<BackPage> {
  var uR = '___';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[300],
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(height: 60),
          // Title
          Center(
              child: Text("I am $uR",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Colors.teal.shade900,
                            blurRadius: 5,
                            offset: const Offset(2, 2))
                      ],
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
          // Admin
          WRUButton(
              name: 'Admin',
              ontap: () {
                setState(() {
                  uR = 'Admin';
                });
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const BottomNavBar()));
              },
              icon: Icons.person_add_alt_1),
          // Teacher
          WRUButton(
              name: 'Teacher',
              ontap: () {
                setState(() {
                  uR = 'Teachers';
                });
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const BottomNavBar()));
              },
              icon: Icons.people_alt),
          //Student
          WRUButton(
              name: 'Student',
              ontap: () {
                setState(() {
                  uR = 'Students';
                });
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const BottomNavBar()));
              },
              icon: Icons.person),
          const SizedBox(height: 60)
        ])));
  }
}

// button widget...
class WRUButton extends StatelessWidget {
  final String name;
  final VoidCallback ontap;
  final IconData icon;
  const WRUButton({
    Key? key,
    required this.name,
    required this.ontap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
                onPressed: ontap,
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    shadowColor: Colors.teal[900],
                    side: BorderSide(
                        color: Colors.teal.shade500,
                        width: 2,
                        style: BorderStyle.solid),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0)),
                    minimumSize: const Size(200, 160)),
                child: Column(children: [
                  Icon(icon, color: Colors.white, size: 50, shadows: <Shadow>[
                    Shadow(
                        color: Colors.teal.shade800,
                        blurRadius: 6.0,
                        offset: const Offset(2, 2))
                  ]),
                  Text(name,
                      style: TextStyle(shadows: [
                        Shadow(
                            color: Colors.teal.shade900,
                            blurRadius: 5,
                            offset: const Offset(2, 2))
                      ], fontSize: 25, fontWeight: FontWeight.bold))
                ]))));
  }
}
