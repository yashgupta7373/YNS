import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../College Web/bottomNav.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.fade, child: const BottomNavigation()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: mediaQuery.size.height * 0.3,
                  child: Image.asset("assets/images/img1.png")),
              SizedBox(
                height: mediaQuery.size.height * 0.2,
                width: mediaQuery.size.width * 0.9,
                child: FittedBox(
                  child: Text(
                    "College Management\n System",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dancingScript(
                      shadows: [
                        Shadow(
                            color: Colors.teal.shade700,
                            blurRadius: 5,
                            offset: const Offset(2, 2))
                      ],
                      fontWeight: FontWeight.w900,
                      color: const Color.fromARGB(255, 43, 232, 213),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
