import 'package:flutter/material.dart';
import 'package:yns_collage_management/pages/Admin/admin_signup_page.dart';
import 'package:yns_collage_management/pages/College%20Web/aboutclg_page.dart';
import 'package:yns_collage_management/pages/College%20Web/clgweb_page.dart';
import 'package:yns_collage_management/pages/College%20Web/noti.dart';
import 'package:yns_collage_management/pages/Student/ssignup_page.dart';
import 'package:yns_collage_management/pages/Teacher/teachers_signup_page.dart';
import 'package:yns_collage_management/pages/home_page.dart';
import 'package:yns_collage_management/pages/Login/login_page.dart';
import 'package:yns_collage_management/pages/Splash%20Screen/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yns_collage_management/pages/College%20Web/whoru.dart';
import 'package:yns_collage_management/Utils/routes.dart';
import 'Admin/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Collage Management',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        backgroundColor: Colors.teal[300],
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        // "/": (context) => const SplashPage(),
        "/": (context) => const AdminBottomnavBar(),
        MyRoutes.splashpageRoute: (context) => const SplashPage(),
        MyRoutes.ClgWebpageRoute: (context) => const ClgWebPage(),
        MyRoutes.AboutClgpageRoute: (context) => const AboutClgPage(),
        MyRoutes.founderpageRoute: (context) => const AboutFounderPage(),
        MyRoutes.notiRoute: (context) => const Noti(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.adminsignupRoute: (context) => const AdminSignUpPage(),
        MyRoutes.teacherssignupRoute: (context) => const TeachersSignUpPage(),
        MyRoutes.studentsignupRoute: (context) => const StudentSignUpPage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.whoruRoute: ((context) => const WhoRUPage())
      },
    );
  }
}
