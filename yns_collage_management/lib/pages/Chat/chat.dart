import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
              Image.asset("assets/images/img61.png"),
              const Text(
                "Welcome to YNS Chat",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 35),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 40),
                child: Text(
                  "Ask queries with your teachers and friends.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
              const Text(
                "*CHAT WILL BE AVAILABLE SOON*",
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
