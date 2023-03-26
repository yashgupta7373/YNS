import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int i = 30;
    double d = 10;
    String s = "Yash";
    bool b = true;
    num n = 93.32;
    var v = "Yash Gupta";
    const pi = 3.14;
    const bdy = 8;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Collage Management"),
      ),
      body: Center(
        child: Text(
            "Hello Flutter\n int = $i \n double = $d \n String = $s \n bool $b \n num = $n \n var = $v \n const = $pi \n finall = $bdy"),
      ),
      drawer: const Drawer(),
    );
  }
}
