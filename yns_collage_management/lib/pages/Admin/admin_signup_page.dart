// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_collage_management/pages/Admin/bottom_navbar.dart';
import 'package:yns_collage_management/Utils/routes.dart';

class AdminSignUpPage extends StatefulWidget {
  const AdminSignUpPage({super.key});

  @override
  State<AdminSignUpPage> createState() => _AdminSignUpPageState();
}

class _AdminSignUpPageState extends State<AdminSignUpPage> {
  var isPasswordVisible = true;
  var isPasswordVisible2 = true;
  var Id = TextEditingController();
  var Email = TextEditingController();
  var Password = TextEditingController();
  var Cpassword = TextEditingController();
  var adminId = 'yashgupta7373';
  var adminEmail = 'ykg1357@gmail.com';
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
              SizedBox(
                width: double.infinity,
                child: Stack(children: [
                  Image.asset(
                    'assets/images/img59.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                    right: mediaQuery.size.width * 0.06,
                    top: 280,
                    child: Text(
                      'Create New \nAccount',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.teal.shade900,
                                blurRadius: 5,
                                offset: const Offset(2, 2))
                          ],
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Noto Serif'),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: mediaQuery.size.width * 0.8,
                height: mediaQuery.size.height * 0.09,
                child: TextFormField(
                  controller: Id,
                  style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: '123456789',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.normal, color: Colors.teal[600]),
                    labelText: "Enter Your Admin ID.",
                    labelStyle: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.teal[900]),
                    prefixIcon: const Icon(
                      Icons.person,
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
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: mediaQuery.size.width * 0.8,
                height: mediaQuery.size.height * 0.09,
                child: TextField(
                  controller: Email,
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
              SizedBox(
                width: mediaQuery.size.width * 0.8,
                height: mediaQuery.size.height * 0.09,
                child: TextField(
                  controller: Password,
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
                      labelText: "Create Password",
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
              SizedBox(
                width: mediaQuery.size.width * 0.8,
                height: mediaQuery.size.height * 0.09,
                child: TextField(
                  controller: Cpassword,
                  style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  cursorColor: Colors.black,
                  obscureText: isPasswordVisible2,
                  decoration: InputDecoration(
                      hintText: 'guyh@27',
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.normal, color: Colors.teal[600]),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.teal[900]),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: isPasswordVisible2
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          if (isPasswordVisible2 == true) {
                            isPasswordVisible2 = false;
                          } else {
                            isPasswordVisible2 = true;
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
              SizedBox(
                width: mediaQuery.size.width * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    String id = Id.text.toString();
                    String email = Email.text.toString();
                    String password = Password.text.toString();
                    String cpassword = Cpassword.text.toString();

                    if (id == adminId) {
                      if (email == adminEmail) {
                        if (password == cpassword) {
                          Navigator.pushReplacement(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: const AdminBottomnavBar(),
                            ),
                          );
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    content: const Text(
                                      "Password Not match... ",
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
                                          // elevation: 6.0,
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
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  backgroundColor: Colors.teal[200],
                                  title: const Text(
                                    "Alert!!!",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                        // elevation: 6.0,
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
                                  "Please Enter Valid Admin ID... ",
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
                                      // elevation: 6.0,
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
                  child: const Text("Sign Up"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: InkWell(
                  onTap: (() =>
                      Navigator.pushNamed(context, MyRoutes.loginRoute)),
                  child: RichText(
                    text: TextSpan(
                        text: 'Already Registered?  ',
                        style: TextStyle(fontSize: 15, color: Colors.teal[900]),
                        children: [
                          TextSpan(
                            text: 'Login.',
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
            ],
          ),
        ),
      ),
    );
  }
}
