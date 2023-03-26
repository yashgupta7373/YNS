// ignore_for_file: sort_child_properties_last, camel_case_types

import 'package:flutter/material.dart';

class feePage extends StatelessWidget {
  const feePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Center(
            child: Text(
              "Fee Structure\n[2023]",
              textAlign: TextAlign.center,
              style: TextStyle(
                  shadows: [
                    Shadow(
                        color: Colors.teal.shade900,
                        blurRadius: 5,
                        offset: const Offset(2, 2))
                  ],
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          // B.Ed...
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Bachelor of Education [B.Ed]",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.schedule, color: Colors.red),
                        Icon(Icons.menu_book, color: Colors.red),
                        Icon(Icons.account_balance, color: Colors.red),
                        Icon(Icons.local_library, color: Colors.red),
                        Icon(Icons.hourglass_full, color: Colors.red),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("2 YEARS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("DEGREE",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("ON CAMPUS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("GRADUATION",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("FULL TIME",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Eligibility - Graduation",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900])),
                  ),
                  Text("Fee Structure:-",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("B.Ed Ist year     -     51,250",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("B.Ed IInd year     -     30,000",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.teal[800],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: Colors.teal.shade800),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.teal.shade900,
                      spreadRadius: 1),
                ],
              ),
            ),
          ),
          // M.Ed...
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Master of Education [M.Ed]",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.schedule, color: Colors.red),
                        Icon(Icons.menu_book, color: Colors.red),
                        Icon(Icons.account_balance, color: Colors.red),
                        Icon(Icons.local_library, color: Colors.red),
                        Icon(Icons.hourglass_full, color: Colors.red),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("2 YEARS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("DEGREE",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("ON CAMPUS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("POST GRADUATION",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("FULL TIME",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Eligibility - Graduation",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900])),
                  ),
                  Text("Fee Structure:-",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("M.Ed Ist year     -     30,000",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("M.Ed IInd year     -     30,000",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.teal[800],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: Colors.teal.shade800),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.teal.shade900,
                      spreadRadius: 1),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Bachelor of Education [B.Ed]",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.schedule, color: Colors.red),
                        Icon(Icons.menu_book, color: Colors.red),
                        Icon(Icons.account_balance, color: Colors.red),
                        Icon(Icons.local_library, color: Colors.red),
                        Icon(Icons.hourglass_full, color: Colors.red),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("2 YEARS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("DEGREE",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("ON CAMPUS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("GRADUATION",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("FULL TIME",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Eligibility - Graduation",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900])),
                  ),
                  Text("Fee Structure:-",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("B.Ed Ist year     -     51,250",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("B.Ed IInd year     -     30,000",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.teal[800],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: Colors.teal.shade800),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.teal.shade900,
                      spreadRadius: 1),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Bachelor of Education [B.Ed]",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.schedule, color: Colors.red),
                        Icon(Icons.menu_book, color: Colors.red),
                        Icon(Icons.account_balance, color: Colors.red),
                        Icon(Icons.local_library, color: Colors.red),
                        Icon(Icons.hourglass_full, color: Colors.red),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("2 YEARS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("DEGREE",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("ON CAMPUS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("GRADUATION",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("FULL TIME",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Eligibility - Graduation",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900])),
                  ),
                  Text("Fee Structure:-",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("B.Ed Ist year     -     51,250",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("B.Ed IInd year     -     30,000",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.teal[800],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: Colors.teal.shade800),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.teal.shade900,
                      spreadRadius: 1),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Bachelor of Education [B.Ed]",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.schedule, color: Colors.red),
                        Icon(Icons.menu_book, color: Colors.red),
                        Icon(Icons.account_balance, color: Colors.red),
                        Icon(Icons.local_library, color: Colors.red),
                        Icon(Icons.hourglass_full, color: Colors.red),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("2 YEARS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("DEGREE",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("ON CAMPUS",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("GRADUATION",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                      Text("FULL TIME",
                          style: TextStyle(fontSize: 12, color: Colors.red)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Eligibility - Graduation",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900])),
                  ),
                  Text("Fee Structure:-",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("B.Ed Ist year     -     51,250",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("B.Ed IInd year     -     30,000",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[100])),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("PAY NOW"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.teal[800],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: Colors.teal.shade800),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.teal.shade900,
                      spreadRadius: 1),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
