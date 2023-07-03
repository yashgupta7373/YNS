// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:readmore/readmore.dart';
import 'package:yns_college_management/pages/photo_view_page.dart';

class HomeWorkCard extends StatelessWidget {
  final snap;
  HomeWorkCard({required this.snap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        color: Colors.teal[400],
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16)
                  .copyWith(right: 0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(snap['photoUrl']),
                  ),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snap['name'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ))),
                  IconButton(
                      onPressed: () {
                        showDialog(
                          useRootNavigator: false,
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.teal[300],
                              child: ListView(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  shrinkWrap: true,
                                  children: ['Share', 'Copy link', 'Save']
                                      .map(
                                        (e) => InkWell(
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 16),
                                              child: Text(e),
                                            ),
                                            onTap: () {
                                              // remove the dialog box
                                              Navigator.of(context).pop();
                                            }),
                                      )
                                      .toList()),
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.more_vert, color: Colors.white)),
                ],
              ),
            ),
            // Title
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: ReadMoreText(
                  snap['title'],
                  trimLines: 1,
                  textAlign: TextAlign.justify,
                  trimMode: TrimMode.Line,
                  lessStyle: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.normal),
                  moreStyle: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.normal),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
            // subject
            const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 8),
                  child: Text(
                    'Subject',
                    style: TextStyle(
                      color: Color.fromARGB(153, 255, 255, 255),
                    ),
                  ),
                )),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: ReadMoreText(
                  snap['subject'],
                  trimLines: 1,
                  textAlign: TextAlign.justify,
                  trimMode: TrimMode.Line,
                  lessStyle: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.normal),
                  moreStyle: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.normal),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
            //Image Section
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child:
                                  PhotoViewPage(image: snap['homeWorkUrl'])));
                    },
                    child:
                        Image.network(snap['homeWorkUrl'], fit: BoxFit.cover)),
              ),
            ),
            // Description
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: ReadMoreText(
                  snap['description'],
                  style: const TextStyle(
                    color: Color.fromARGB(174, 255, 255, 255),
                  ),
                  trimLines: 3,
                  textAlign: TextAlign.justify,
                  trimMode: TrimMode.Line,
                  lessStyle: const TextStyle(color: Colors.red),
                  moreStyle: const TextStyle(color: Colors.red),
                )),
            // comment, share, save section
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    )),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      )),
                )),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              child: Text(
                DateFormat.yMMMd().format(snap['datePublished'].toDate()),
                textAlign: TextAlign.end,
                style: const TextStyle(
                    fontSize: 14, color: Color.fromARGB(153, 255, 255, 255)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
