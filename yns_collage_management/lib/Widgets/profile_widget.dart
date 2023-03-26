// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//profile
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var name = 'Yash Gupta';
    var position = 'HOD';
    var department = 'Computer Science Teacher';
    return Container(
      decoration: BoxDecoration(
          color: Colors.teal[400],
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.elliptical(120, 90),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/img60.png"),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // RichText(
                      //     textAlign: TextAlign.center,
                      //     text: TextSpan(
                      //         text: '86%\n',
                      //         style: TextStyle(
                      //             fontSize: 20,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.teal[900]),
                      //         children: [
                      //           TextSpan(
                      //             text: 'PRESENTS',
                      //             style: TextStyle(
                      //                 fontSize: 14,
                      //                 fontWeight: FontWeight.bold,
                      //                 color: Colors.teal[900]),
                      //           ),
                      //         ])),
                      // RichText(
                      //     textAlign: TextAlign.center,
                      //     text: TextSpan(
                      //         text: ('7%\n'),
                      //         style: TextStyle(
                      //             fontSize: 20,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.teal[900]),
                      //         children: [
                      //           TextSpan(
                      //             text: 'ABSENTS',
                      //             style: TextStyle(
                      //                 fontSize: 14,
                      //                 fontWeight: FontWeight.bold,
                      //                 color: Colors.teal[900]),
                      //           )
                      //         ])),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, bottom: 15),
                        child: SizedBox(
                          width: 180,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal[900]),
                              ),
                              Text(
                                '[$position]',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal[900]),
                              ),
                              Text(
                                department,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal[900]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60, top: 20),
            child: Container(
              // color: Colors.teal[600],
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(5, 10),
                        blurRadius: 20,
                        color: Colors.teal.shade900.withOpacity(0.6))
                  ],
                  color: Colors.teal[600],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.elliptical(120, 90),
                  )),
              child: InkWell(
                onTap: (() {
                  // Navigator.push(
                  //   context,
                  //   PageTransition(
                  //     type: PageTransitionType.topToBottom,
                  //     child: const Chat(),
                  // ),
                  // );
                  launch('http://wa.me/+919058405125');
                }),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.facebookMessenger,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Message',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15, bottom: 15),
          //   child: SizedBox(
          //     width: 180,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Yash Gupta',
          //           style: TextStyle(
          //               fontSize: 18,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.teal[900]),
          //         ),
          //         Text(
          //           '[HOD]',
          //           style: TextStyle(
          //               fontSize: 15,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.teal[900]),
          //         ),
          //         Text(
          //           'Computer Science Teacher ',
          //           style: TextStyle(
          //               fontSize: 15,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.teal[900]),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

//Row Widget For Admin Information
class AdminRowWidget extends StatelessWidget {
  final String text1;
  final String text2;

  const AdminRowWidget({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.teal[400],
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      text1,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.teal[400],
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        text2,
                        style: const TextStyle(
                            fontSize: 14, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}

// Admin and Teacher Details
class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    var name = 'Yash Gupta';
    var position = 'HOD';
    var department = 'Computer Science Teacher';
    return Column(
      children: [
        AdminRowWidget(text1: 'Name:', text2: name),
        AdminRowWidget(text1: 'Bio', text2: 'I am yash Gupta.....'),
        AdminRowWidget(text1: 'Position:', text2: position),
        AdminRowWidget(text1: 'Department:', text2: department),
        AdminRowWidget(text1: 'Nationality:', text2: 'Indian'),
        AdminRowWidget(
            text1: 'Address:',
            text2: 'Mansenor Marcelo Neighborhood, block 3, house no. HB263'),
        AdminRowWidget(text1: 'E-mail Id:', text2: 'xyz653@gmail.com'),
        AdminRowWidget(text1: 'Occupation:', text2: 'Java Teacher'),
        AdminRowWidget(text1: 'Birth Date:', text2: 'November 23 1993'),
        AdminRowWidget(text1: 'Languages:', text2: 'Hindi, English'),
        const SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          InkWell(
            onTap: () {},
            child: Icon(
              FontAwesomeIcons.facebook,
              color: Colors.teal[800], //Color Of Icon
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              FontAwesomeIcons.instagram,
              color: Colors.teal[800], //Color Of Icon
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              FontAwesomeIcons.twitter,
              color: Colors.teal[800], //Color Of Icon
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.mail,
              color: Colors.teal[800], //Color Of Icon
            ),
          )
        ]),
        const SizedBox(height: 60),
      ],
    );
  }
}
