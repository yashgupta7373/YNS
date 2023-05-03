import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
              height: mediaQuery.size.height * 0.5,
              child: Lottie.asset('assets/images/img59.json')),
          const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Time Table Will Be Uploaded Soon...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 30)))
        ])));
  }
}
