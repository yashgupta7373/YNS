// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// class Try extends StatefulWidget {
//   Try({super.key});
//   @override
//   State<Try> createState() => _TryState();
//   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//   var type = "basic".obs;
//   late CollectionReference collectionReference;
//   List<BasicEnglModel> basicEng = List<BasicEnglModel>([]);
//   void onInit() {
//     super.onInit();
//     collectionReference = firebaseFirestore.collection('users');
//     basicEng.bindStream(getAllEnglish());
//   }
//   Stream<List<BasicEnglModel>> getAllEnglish() => collectionReference
//       .where('role', isEqualTo: 'student')
//       .snapshots()
//       .map((query) =>
//           query.docs.map((item) => BasicEnglModel.fromMap(item)).toList());
// }
// class _TryState extends State<Try> {
//   //listTile
//   List<String> arrRollno = [
//     '200955106190',
//     '200955106191',
//     '200955106192',
//     '200955106193',
//     '200955106194',
//     '200955106195',
//     '200955106196',
//     '200955106197',
//     '200955106198',
//     '200955106199',
//     '200955106200',
//     '200955106201'
//   ];
//   List<String> arrclass = [
//     'BCA',
//     'Bcom.',
//     'Mcom.',
//     'Msc',
//     'Btech',
//     'MCA',
//     'BA',
//     'Betech',
//     'Bca',
//     'BA',
//     'BA',
//     'MA'
//   ];
//   //
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.teal[300],
//         appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
//         body: Column(children: [
//           Center(
//               child: Text("Student List Who Use College Transport",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       shadows: [
//                         Shadow(
//                             color: Colors.teal.shade900,
//                             blurRadius: 5,
//                             offset: const Offset(2, 2))
//                       ],
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white))),
//           Expanded(
//               child: SingleChildScrollView(
//                   child: Column(children: [
//             ListView.builder(
//                 shrinkWrap: true,
//                 physics: const ScrollPhysics(parent: null),
//                 itemCount: arrRollno.length,
//                 itemBuilder: (context, index) {
//                   return InkWell(
//                       onTap: (() {}),
//                       child: Card(
//                           color: Colors.teal[700],
//                           elevation: 5,
//                           shadowColor: Colors.teal[500],
//                           child: ListTile(
//                               leading: InkWell(
//                                   onTap: (() {}),
//                                   child: const CircleAvatar(
//                                       backgroundColor: Colors.white,
//                                       radius: 50,
//                                       backgroundImage: AssetImage(
//                                           "assets/images/img60.png"))),
//                               title: Text(arrRollno[index],
//                                   style: const TextStyle(
//                                       fontStyle: FontStyle.normal,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 14)),
//                               textColor: Colors.white,
//                               subtitle: Text(arrclass[index]),
//                               trailing: InkWell(
//                                   onTap: (() {}),
//                                   child: const Icon(Icons.info,
//                                       color: Colors.white)))));
//                 })
//           ])))
//         ]));
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Try extends StatefulWidget {
  const Try({super.key});
  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  var collection = FirebaseFirestore.instance.collection('users').where(
        'role',
        isEqualTo: 'teacher',
      );
  late List<Map<String, dynamic>> items;
  // bool isLoaded = false;
  _incrementCounter() async {
    List<Map<String, dynamic>> tempList = [];
    var data = await collection.get();
    data.docs.forEach((element) {
      tempList.add(element.data());
    });
    setState(() {
      items = tempList;
      // isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Column(children: [
        Center(
            child: Text("Student List Who Use College Transport",
                textAlign: TextAlign.center,
                style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Colors.teal.shade900,
                          blurRadius: 5,
                          offset: const Offset(2, 2))
                    ],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
          // isLoaded ?
          ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(parent: null),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: (() {}),
                    child: Card(
                        color: Colors.teal[700],
                        elevation: 5,
                        shadowColor: Colors.teal[500],
                        child: ListTile(
                            leading: InkWell(
                                onTap: (() {}),
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        (items[index]['photoUrl'])))),
                            title: Text(items[index]['name'],
                                style: const TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                            textColor: Colors.white,
                            subtitle: Text(items[index]['id']),
                            trailing: InkWell(
                                onTap: (() {}),
                                child: const Icon(Icons.info,
                                    color: Colors.white)))));
              })
          // : Text('No Data')
        ])))
      ]),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
