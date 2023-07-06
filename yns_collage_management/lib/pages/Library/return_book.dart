// // ignore_for_file: must_be_immutable
// import 'package:flutter/material.dart';

// class ReturnBook extends StatefulWidget {
//   String role;
//   ReturnBook({required this.role, super.key});
//   @override
//   State<ReturnBook> createState() => _ReturnBookState();
// }

// class _ReturnBookState extends State<ReturnBook> {
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
//   List<String> arrName = [
//     'Raman',
//     'Ramnaujan',
//     'Rajesh',
//     'James',
//     'Rahim',
//     'Ram',
//     'Raman',
//     'Ramnaujan',
//     'Rajesh',
//     'James',
//     'Rahim',
//     'Ram'
//   ];
//   List<String> presentArray = [];
//   void countPresentStudent() {
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     var mediaQuery = MediaQuery.of(context);
//     return Scaffold(
//         backgroundColor: Colors.teal[300],
//         appBar: AppBar(
//             backgroundColor: Colors.transparent,
//             toolbarHeight: 30,
//             elevation: 0),
//         body: Column(children: [
//           // Return Book
//           Expanded(
//               child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.teal[500],
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(30),
//                           topRight: Radius.circular(30))),
//                   width: double.infinity,
//                   child: Column(children: [
//                     const Text('Return Book',
//                         style: TextStyle(fontSize: 20, color: Colors.white)),
//                     Expanded(
//                         child: SingleChildScrollView(
//                             child: ListView.builder(
//                                 shrinkWrap: true,
//                                 physics: const ScrollPhysics(parent: null),
//                                 itemCount: arrRollno.length,
//                                 itemBuilder: (context, index) {
//                                   return InkWell(
//                                       onTap: (() {
//                                         setState(() {
//                                           if (presentArray.contains(
//                                               arrRollno[index].toString())) {
//                                             presentArray.remove(
//                                                 arrRollno[index].toString());
//                                           } else {
//                                             presentArray.add(
//                                                 arrRollno[index].toString());
//                                           }
//                                         });
//                                         countPresentStudent();
//                                       }),
//                                       child: Card(
//                                           color: Colors.teal[700],
//                                           elevation: 5,
//                                           shadowColor:
//                                               presentArray.contains(arrRollno[index].toString())
//                                                   ? Colors.green
//                                                   : Colors.red,
//                                           child: ListTile(
//                                               leading: InkWell(
//                                                   onTap: (() {}),
//                                                   child: const CircleAvatar(
//                                                       backgroundColor:
//                                                           Colors.white,
//                                                       radius: 50,
//                                                       backgroundImage: AssetImage(
//                                                           "assets/images/img60.png"))),
//                                               title: Text(arrRollno[index],
//                                                   style: const TextStyle(
//                                                       fontStyle:
//                                                           FontStyle.normal,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       fontSize: 14)),
//                                               textColor: Colors.white,
//                                               subtitle: Text(arrName[index]),
//                                               trailing: (widget.role != 'Students')
//                                                   ? Container(height: 40, width: 90, decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: presentArray.contains(arrRollno[index].toString()) ? Colors.green : Colors.red), child: Center(child: Text(presentArray.contains(arrRollno[index].toString()) ? 'Issue' : 'Return')))
//                                                   : const SizedBox())));
//                                 })))
//                   ]))),
//           const SizedBox(height: 5),
//           // old Record
//           Container(
//               width: double.infinity,
//               height: mediaQuery.size.height * 0.5,
//               decoration: BoxDecoration(
//                   color: Colors.teal[500],
//                   borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30))),
//               child: Column(children: [
//                 const Text('Old Record',
//                     style: TextStyle(fontSize: 20, color: Colors.white)),
//                 Expanded(
//                     child: SingleChildScrollView(
//                         child: ListView.builder(
//                             shrinkWrap: true,
//                             physics: const ScrollPhysics(parent: null),
//                             itemCount: arrRollno.length,
//                             itemBuilder: (context, index) {
//                               return InkWell(
//                                   onTap: (() {}),
//                                   child: Card(
//                                       color: Colors.teal[900],
//                                       elevation: 5,
//                                       child: ListTile(
//                                           leading: InkWell(
//                                               onTap: (() {}),
//                                               child: const CircleAvatar(
//                                                   backgroundColor: Colors.white,
//                                                   radius: 50,
//                                                   backgroundImage: AssetImage(
//                                                       "assets/images/img60.png"))),
//                                           title: Text(arrRollno[index],
//                                               style: const TextStyle(
//                                                   fontStyle: FontStyle.normal,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 14)),
//                                           textColor: Colors.white,
//                                           subtitle: Text(arrName[index]),
//                                           trailing: InkWell(
//                                               onTap: (() {}),
//                                               child: const Icon(Icons.info,
//                                                   color: Colors.white)))));
//                             })))
//               ]))
//         ]));
//   }
// }
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/////////////////////////////////////////////////
// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_college_management/Utils/utils.dart';
import 'package:yns_college_management/pages/profile_page.dart';

class ReturnBook extends StatefulWidget {
  String uid;
  ReturnBook({super.key, required this.uid});
  @override
  State<ReturnBook> createState() => _ReturnBookState();
}

class _ReturnBookState extends State<ReturnBook> {
  //fetch Data
  var userData = {};
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {
    setState(() {
      isLoading = true;
    });
    try {
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.uid)
          .get();
      userData = userSnap.data()!;
      setState(() {});
    } catch (e) {
      showSnackBar(
        context,
        e.toString(),
      );
    }
    setState(() {
      isLoading = false;
    });
  }

  var collection;

  void getData() async {
    if (userData['role'] == 'student') {
      collection = await FirebaseFirestore.instance
          .collection('library')
          .where('id', isEqualTo: userData['id']);
    } else {
      collection = await FirebaseFirestore.instance.collection('library');
    }
  }

  var items;
  bool isLoaded = false;

  void incrementCounter() async {
    List<Map<String, dynamic>> tempList = [];
    var data = await collection.get();
    for (var element in data.docs) {
      tempList.add(element.data());
    }
    setState(() {
      items = tempList;
      isLoaded = true;
    });
  }

  TextStyle style1 = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Color.fromARGB(255, 206, 216, 214),
      fontWeight: FontWeight.bold);

  void deleteUser(id) {
    FirebaseFirestore.instance.collection('library').doc(id).delete();
    Fluttertoast.showToast(msg: "Student Deleted");
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    var r = userData['role'];
    getData();
    incrementCounter();

    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // elevation: 0,
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                  icon: Icon(
                    Icons.filter_alt,
                  ),
                  onPressed: () {}))
        ],
        title: Text('Library Record'),
      ),
      body: Column(children: [
        Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
          isLoaded
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(parent: null),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: (() {
                          var uid = items[index]['uid'];

                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: ProfilePage(uid: uid)));
                        }),
                        child: Card(
                            color: Colors.teal[700],
                            elevation: 5,
                            shadowColor: Colors.teal[500],
                            child: ListTile(
                                leading: InkWell(
                                    onTap: (() {
                                      showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: InkWell(
                                                onTap: () =>
                                                    Navigator.of(ctx).pop(),
                                                child: Image.network(
                                                    items[index]['photoUrl']),
                                              )));
                                    }),
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
                                trailing: (userData['role'] != 'student')
                                    ? InkWell(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0)),
                                                  backgroundColor:
                                                      const Color.fromRGBO(
                                                          100, 232, 222, 0.7),
                                                  title: const Text(
                                                      'Are You Sure...',
                                                      style: TextStyle(
                                                          fontSize: 18)),
                                                  content: SizedBox(
                                                    height: 175,
                                                    child: Column(
                                                      children: [
                                                        CircleAvatar(
                                                            backgroundColor:
                                                                Colors.white,
                                                            radius: 40,
                                                            backgroundImage:
                                                                NetworkImage((items[
                                                                        index][
                                                                    'photoUrl']))),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Name: ',
                                                              style: style1,
                                                            ),
                                                            Text(
                                                                items[index]
                                                                    ['name'],
                                                                style: style1),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text('Roll-No: ',
                                                                style: style1),
                                                            Text(
                                                                items[index]
                                                                    ['id'],
                                                                style: style1),
                                                          ],
                                                        ),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            ctx)
                                                                        .pop();
                                                                  },
                                                                  child: const Text(
                                                                      'No',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              0,
                                                                              77,
                                                                              64)))),
                                                              TextButton(
                                                                  onPressed:
                                                                      () {},
                                                                  child: const Text(
                                                                      'Yes',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              0,
                                                                              77,
                                                                              64))))
                                                            ]),
                                                      ],
                                                    ),
                                                  )));
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Return',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.info,
                                          color: Colors.white,
                                        )))));
                  })
              : SizedBox(
                  height: mediaQuery.size.height * 0.85,
                  width: mediaQuery.size.width * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ],
                  ),
                )
        ])))
      ]),
    );
  }
}
