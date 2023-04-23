import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return StreamBuilder<ConnectivityResult>(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          return Scaffold(
              backgroundColor: Colors.teal[300],
              appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
              body: SingleChildScrollView(
                  child: Column(children: [
                SizedBox(
                    height: mediaQuery.size.height * 0.5,
                    child: Lottie.network(
                        'https://assets4.lottiefiles.com/packages/lf20_buhby0ug.json')),
                const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Result Will Be Uploaded Soon...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 30)))
              ])));
        });
  }
}
