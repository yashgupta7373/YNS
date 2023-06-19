// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../profile_page.dart';

class Edit extends StatefulWidget {
  String role;
  Edit({super.key, required this.role});
  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  var collection;
  void getData() {
    collection = FirebaseFirestore.instance.collection('users').where(
          'role',
          isEqualTo: widget.role,
        );
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

  //fetch user Data..
  var uid = '';
  bool Loaded = false;
  var role = "",
      username = "",
      session = "",
      id = "",
      rollNo = "",
      profile = "",
      Class = "",
      department = "",
      phoneNo = "",
      fName = "",
      mName = "",
      dob = "",
      subject = "",
      language = "",
      aadharNo = "",
      gender = "",
      category = "",
      occupation = "",
      email = "",
      income = "",
      photo = "",
      transport = '',
      address = "";
  void getUserData() async {
    DocumentSnapshot snap =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    setState(() {
      role = (snap.data() as Map<String, dynamic>)['role'];
    });
    if (role == 'admin' || role == 'teacher') {
      setState(() {
        id = (snap.data() as Map<String, dynamic>)['id'];
        username = (snap.data() as Map<String, dynamic>)['name'];
        profile = (snap.data() as Map<String, dynamic>)['profile'];
        department = (snap.data() as Map<String, dynamic>)['department'];
        subject = (snap.data() as Map<String, dynamic>)['subject'];
        language = (snap.data() as Map<String, dynamic>)['language'];
        fName = (snap.data() as Map<String, dynamic>)['fName'];
        mName = (snap.data() as Map<String, dynamic>)['mName'];
        dob = (snap.data() as Map<String, dynamic>)['dob'];
        aadharNo = (snap.data() as Map<String, dynamic>)['aadharNo.'];
        gender = (snap.data() as Map<String, dynamic>)['gender'];
        address = (snap.data() as Map<String, dynamic>)['address'];
        phoneNo = (snap.data() as Map<String, dynamic>)['phoneNo'];
        email = (snap.data() as Map<String, dynamic>)['email'];
        photo = (snap.data() as Map<String, dynamic>)['photoUrl'];
        transport = (snap.data() as Map<String, dynamic>)['transport'];
      });
    } else {
      setState(() {
        rollNo = (snap.data() as Map<String, dynamic>)['id'];
        Class = (snap.data() as Map<String, dynamic>)['Class'];
        department = (snap.data() as Map<String, dynamic>)['department'];
        // present = (snap.data() as Map<String, dynamic>)['present'];
        // absent =  (snap.data() as Map<String, dynamic>)['absent'];
        session = (snap.data() as Map<String, dynamic>)['session'];
        username = (snap.data() as Map<String, dynamic>)['name'];
        fName = (snap.data() as Map<String, dynamic>)['fName'];
        mName = (snap.data() as Map<String, dynamic>)['mName'];
        dob = (snap.data() as Map<String, dynamic>)['dob'];
        aadharNo = (snap.data() as Map<String, dynamic>)['aadharNo.'];
        gender = (snap.data() as Map<String, dynamic>)['gender'];
        category = (snap.data() as Map<String, dynamic>)['category'];
        occupation = (snap.data() as Map<String, dynamic>)['gOccupation'];
        income = (snap.data() as Map<String, dynamic>)['gIncome'];
        address = (snap.data() as Map<String, dynamic>)['address'];
        phoneNo = (snap.data() as Map<String, dynamic>)['phoneNo'];
        email = (snap.data() as Map<String, dynamic>)['email'];
        photo = (snap.data() as Map<String, dynamic>)['photoUrl'];
        transport = (snap.data() as Map<String, dynamic>)['transport'];
      });
    }
    setState(() {
      Loaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    var r = widget.role;
    getData();
    incrementCounter();
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // elevation: 0,
        title: Text('Edit $r Details'),
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
                          uid = items[index]['uid'];
                          getUserData();
                          Loaded
                              ? Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: ProfilePage(
                                          role: role,
                                          Class: Class,
                                          aadharNo: aadharNo,
                                          address: address,
                                          category: category,
                                          department: department,
                                          dob: dob,
                                          email: email,
                                          fName: fName,
                                          gender: gender,
                                          id: id,
                                          income: income,
                                          language: language,
                                          mName: mName,
                                          occupation: occupation,
                                          phoneNo: phoneNo,
                                          profile: profile,
                                          rollNo: rollNo,
                                          session: session,
                                          subject: subject,
                                          photo: photo,
                                          transport: transport,
                                          username: username)))
                              : showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                      elevation: 0,
                                      backgroundColor: Colors.transparent,
                                      content: SizedBox(
                                        height: 55,
                                        child: Column(
                                          children: const [
                                            CircularProgressIndicator(
                                                color: Color.fromARGB(
                                                    255, 253, 253, 253)),
                                            Text(
                                              'Wait 2 seconds and click Again...',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      )));
                        }),
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
                                trailing: SizedBox(
                                  width: 80,
                                  child: Row(
                                    children: [
                                      InkWell(
                                          onTap: (() {}),
                                          child: const Icon(Icons.edit,
                                              color: Color.fromARGB(
                                                  255, 47, 0, 255))),
                                      const SizedBox(width: 15),
                                      InkWell(
                                          onTap: (() {}),
                                          child: const Icon(Icons.delete,
                                              color: Colors.red)),
                                    ],
                                  ),
                                ))));
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
