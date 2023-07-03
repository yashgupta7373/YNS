// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:readmore/readmore.dart';
import 'package:yns_college_management/pages/photo_view_page.dart';

class ResultCard extends StatelessWidget {
  final snap;
  ResultCard({required this.snap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cls = snap['Class'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        color: Colors.teal[400],
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            // Title
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: ReadMoreText(
                  snap['title'],
                  trimLines: 1,
                  textAlign: TextAlign.justify,
                  trimMode: TrimMode.Line,
                  lessStyle: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.normal),
                  moreStyle: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.normal),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),

            // class
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Class: $cls',
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
            // Roll-No
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: Text(
                  snap['id'],
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
            //Image Section
            SizedBox(
              // height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: PhotoViewPage(image: snap['resultUrl'])));
                    },
                    child: Image.network(snap['resultUrl'], fit: BoxFit.cover)),
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
                  lessStyle: TextStyle(color: Colors.red),
                  moreStyle: TextStyle(color: Colors.red),
                )),
            // date
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
