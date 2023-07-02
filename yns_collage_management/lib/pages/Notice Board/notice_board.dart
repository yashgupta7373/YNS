// ignore_for_file: must_be_immutable
// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:page_transition/page_transition.dart';
import 'package:yns_college_management/Utils/utils.dart';
import 'package:yns_college_management/Widgets/notice_card.dart';
import 'package:yns_college_management/pages/Notice%20Board/add_notice.dart';

class NoticeBoard extends StatefulWidget {
  String uid;
  NoticeBoard({required this.uid, super.key});
  @override
  State<NoticeBoard> createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  final titleController = TextEditingController();

  // image picker
  File? _image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemorary = File(image.path);
    setState(() {
      _image = imageTemorary;
    });
  }

  //fetch user Data
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
            title: const Text('Notice Board'),
            elevation: 0,
            backgroundColor: Colors.transparent),
        body: (userData['role'] != 'student')
            ? StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('notice').snapshots(),
                builder: (context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.teal,
                      ),
                    );
                  }
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (ctx, index) => Container(
                      margin: EdgeInsets.symmetric(
                          // horizontal: width > webScreenSize ? width * 0.3 : 0,
                          // vertical: width > webScreenSize ? 15 : 0,
                          ),
                      child: NoticeCard(
                        snap: snapshot.data!.docs[index].data(),
                      ),
                    ),
                  );
                },
              )
            : StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('notice')
                    .where('Class', isEqualTo: userData['Class'])
                    .snapshots(),
                builder: (context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.teal,
                      ),
                    );
                  }
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (ctx, index) => Container(
                      margin: EdgeInsets.symmetric(
                          // horizontal: width > webScreenSize ? width * 0.3 : 0,
                          // vertical: width > webScreenSize ? 15 : 0,
                          ),
                      child: NoticeCard(
                        snap: snapshot.data!.docs[index].data(),
                      ),
                    ),
                  );
                },
              ),

        // body: SingleChildScrollView(
        //     child: Column(children: [
        //   Center(
        //       child: Text("Notice Board",
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //               shadows: [
        //                 Shadow(
        //                     color: Colors.teal.shade900,
        //                     blurRadius: 5,
        //                     offset: const Offset(2, 2))
        //               ],
        //               fontSize: 50,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.white))),
        //   Lottie.asset('assets/images/img72.json')
        // ])),

        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              if (userData['role'] != 'student') {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: AddNoticeScreen(uid: userData['uid'])));
              }
            },
            label: const Text('Upload')));
  }
}
