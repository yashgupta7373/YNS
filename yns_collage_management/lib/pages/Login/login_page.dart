import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_collage_management/pages/College%20Web/whoru.dart';
import 'package:yns_collage_management/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var isPasswordVisible = true;
  // var passerror = false;
  var email = TextEditingController();
  var password = TextEditingController();
  var studentEmail = 'ykg1357@gmail.com';
  var studentPno = 9058405125;
  var studentPassword = '7373';
  // var error1 = false;
  // bool error2 = false;
  final forrmkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: SingleChildScrollView(
        child: Form(
          key: forrmkey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/img59.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Text(
                'Log In',
                textAlign: TextAlign.center,
                style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Colors.teal.shade900,
                          blurRadius: 5,
                          offset: const Offset(2, 2))
                    ],
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Noto Serif'),
              ),
              const SizedBox(height: 20),
              // Enter Email
              SizedBox(
                width: mediaQuery.size.width * 0.8,
                height: mediaQuery.size.height * 0.09,
                child: TextField(
                  controller: email,
                  style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'YNSManagement@gmail.com',
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.normal, color: Colors.teal[600]),
                      labelText: "Enter Your Email",
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.teal[900]),
                      prefixIcon: const Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 2, 42, 36), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.teal.shade800,
                            width: 1.5,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              // Enter PassWord
              SizedBox(
                width: mediaQuery.size.width * 0.8,
                height: mediaQuery.size.height * 0.09,
                child: TextField(
                  controller: password,
                  style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  cursorColor: Colors.black,
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                      hintText: 'guyh@27',
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.normal, color: Colors.teal[600]),
                      labelText: "Enter Password",
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.teal[900]),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: isPasswordVisible
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          if (isPasswordVisible == true) {
                            isPasswordVisible = false;
                          } else {
                            isPasswordVisible = true;
                          }
                          setState(() {});
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 2, 42, 36), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.teal.shade800,
                            width: 1.5,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              //Log in Button
              SizedBox(
                width: mediaQuery.size.width * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    String emailstr = email.text.toString();
                    String passwordstr = password.text.toString();

                    if (emailstr == studentEmail) {
                      if (passwordstr == studentPassword) {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: const HomePage()));
                      } else {
                        showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  backgroundColor: Colors.teal[200],
                                  title: const Text(
                                    "Alert!!!",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  content: const Text(
                                    "Incorect Password... ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.teal[400],
                                        side: BorderSide(
                                            color: Colors.teal.shade600),
                                      ),
                                      child: const Text(
                                        "okay",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ));
                      }
                    } else {
                      showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0)),
                                backgroundColor: Colors.teal[200],
                                title: const Text(
                                  "Alert!!!",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content: const Text(
                                  "Please Enter Valid Email OR Phone No.... ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                actions: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.teal[400],
                                      side: BorderSide(
                                          color: Colors.teal.shade600),
                                    ),
                                    child: const Text(
                                      "okay",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.teal[600],
                    shadowColor: Colors.teal[600],
                    side: BorderSide(
                        color: Colors.teal.shade600,
                        width: 2,
                        style: BorderStyle.solid),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    minimumSize: const Size(20, 50),
                  ),
                  child: const Text("Log in"),
                ),
              ),
              // Switch to SignUP Screen
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: InkWell(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const WhoRUPage()));
                    },
                    child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account?  ',
                          style:
                              TextStyle(fontSize: 15, color: Colors.teal[900]),
                          children: [
                            TextSpan(
                              text: 'Sign up',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  color: Colors.red[300],
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500),
                            )
                          ]),
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
