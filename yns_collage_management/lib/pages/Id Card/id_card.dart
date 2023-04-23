import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IdCard extends StatelessWidget {
  const IdCard({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
              height: mediaQuery.size.height * 0.5,
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_830nh3fg.json')),
          const Center(
              child: Text("Sorry !!!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 35))),
          const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 40),
              child: Center(
                  child: Text("Your ID Card Will Be Available Soon*",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 15))))
        ])));
  }
}
