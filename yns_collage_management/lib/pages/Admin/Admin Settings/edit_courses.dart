// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../profile_page.dart';

class EditCourse extends StatefulWidget {
  EditCourse({super.key});
  @override
  State<EditCourse> createState() => _EditCourseState();
}

class _EditCourseState extends State<EditCourse> {
  var collection;
  void getData() {
    collection = FirebaseFirestore.instance.collection('courses');
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

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    getData();
    incrementCounter();
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // elevation: 0,
        title: Text('Edit Courses'),
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
                    var course = items[index]['cName'];
                    var year = items[index]['semester'];
                    return Card(
                        color: Colors.teal[700],
                        elevation: 5,
                        shadowColor: Colors.teal[500],
                        child: ListTile(
                            title: Text('$course ($year)',
                                style: const TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                            textColor: Colors.white,
                            subtitle: Text(items[index]['department']),
                            trailing: SizedBox(
                              width: 80,
                              child: Row(
                                children: [
                                  InkWell(
                                      onTap: (() {}),
                                      child: const Icon(Icons.edit,
                                          color:
                                              Color.fromARGB(255, 47, 0, 255))),
                                  const SizedBox(width: 15),
                                  InkWell(
                                      onTap: (() {}),
                                      child: const Icon(Icons.delete,
                                          color: Colors.red)),
                                ],
                              ),
                            )));
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
