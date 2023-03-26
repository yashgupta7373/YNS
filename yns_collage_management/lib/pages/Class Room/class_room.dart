import 'package:flutter/material.dart';

class ClassRoom extends StatefulWidget {
  const ClassRoom({super.key});

  @override
  State<ClassRoom> createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(100, 232, 222, 1.0),
      appBar: AppBar(
        // title: Text('Yash Gupta'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(165, 50, 255, 1.0),
              Color.fromRGBO(165, 90, 255, 1.0),
              Color.fromRGBO(138, 150, 235, 1.0),
              Color.fromRGBO(100, 232, 222, 1.0),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset("assets/images/img64.png"),
              const Text(
                "Welcome to YNS Class Room",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 35),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 40),
                child: Text(
                  "Teachers upload notes and student Ask queries.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
              const Text(
                "*CLASS ROOM WILL BE AVAILABLE SOON*",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
