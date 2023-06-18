// ignore_for_file: deprecated_member_use
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yns_college_management/pages/College%20Web/aboutclg_page.dart';
import 'package:yns_college_management/pages/College%20Web/clgweb_page.dart';
import 'package:yns_college_management/pages/College%20Web/notification.dart';
import 'package:yns_college_management/pages/Splash%20Screen/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yns_college_management/Utils/routes.dart';
import 'package:yns_college_management/pages/Transport/transport.dart';
import 'package:yns_college_management/pages/waste%20files/try.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialize app based on platform- web or mobile
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyB4qgtlot3GgmcyrO4YxoCzSLTMX3qaJIM',
            appId: '1:1022822098505:web:e6e12c5076c933fd708198',
            messagingSenderId: "1022822098505",
            projectId: "college-management-2bb43",
            storageBucket: "college-management-2bb43.appspot.com",
            authDomain: "college-management-2bb43.firebaseapp.com",
            measurementId: "G-ZB9BRK2FLQ"));
  } else {
    await Firebase.initializeApp();
  }
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
        title: 'Clg Management',
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.teal,
            backgroundColor: Colors.teal[300],
            textTheme: const TextTheme(
                headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                subtitle1: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic)),
            fontFamily: GoogleFonts.lato().fontFamily),
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: {
          "/": (context) =>
              SplashPage(image: Lottie.asset('assets/images/img75.json')),
          // "/": (context) => Transport(),
          MyRoutes.ClgWebpageRoute: (context) => const ClgWebPage(),
          MyRoutes.AboutClgpageRoute: (context) => const AboutClgPage(),
          MyRoutes.founderpageRoute: (context) => const AboutFounderPage(),
          MyRoutes.notiRoute: (context) => const NotificationPage()
        });
  }
}
