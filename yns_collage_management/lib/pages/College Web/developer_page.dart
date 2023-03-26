import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Developers",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Colors.teal.shade900,
                            blurRadius: 5,
                            offset: const Offset(2, 2))
                      ],
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              // Yash Gupta...
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.teal[800],
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(width: 1, color: Colors.teal.shade600),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.teal.shade900,
                            spreadRadius: 1),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 75,
                    child: InkWell(
                      onTap: () =>
                          // ignore: deprecated_member_use
                          launch('https://instagram.com/yashgupta7373'),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img50.jpg'),
                            fit: BoxFit.fill,
                          ),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(75)),
                          border:
                              Border.all(width: 1, color: Colors.teal.shade600),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.teal.shade900,
                                spreadRadius: 1)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: 90,
                    child: Text(
                      "Yash Gupta",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.teal.shade900,
                                blurRadius: 5,
                                offset: const Offset(2, 2))
                          ],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 10,
                    right: 10,
                    child: Text(
                      "He is one of the developer of this application. He is passionate about programming, application/ web developing and designing",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200]),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 40,
                    right: 40,
                    bottom: 25,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () =>
                                // ignore: deprecated_member_use
                                launch('https://instagram.com/yashgupta7373'),
                            child: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () =>
                                // ignore: deprecated_member_use
                                launch('https://facebook.com/yashgupta7373'),
                            child: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () =>
                                // ignore: deprecated_member_use
                                launch('https://twitter.com/yashgupta7373'),
                            child: const FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch('mailto:ykg1357@gmail.com'),
                            child: const Icon(
                              Icons.mail,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 1,
                  width: 300,
                  color: Colors.teal[700],
                ),
              ),

              // Yash Gupta...
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.teal[800],
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(width: 1, color: Colors.teal.shade600),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.teal.shade900,
                            spreadRadius: 1),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 75,
                    child: InkWell(
                      // ignore: deprecated_member_use
                      onTap: () => launch(
                          'https://instagram.com/yashgupta3646?igshid=NTdlMDg3MTY='),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img54.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(75)),
                          border:
                              Border.all(width: 1, color: Colors.teal.shade600),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.teal.shade900,
                                spreadRadius: 1)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: 90,
                    child: Text(
                      "Yash Gupta",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.teal.shade900,
                                blurRadius: 5,
                                offset: const Offset(2, 2))
                          ],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 10,
                    right: 10,
                    child: Text(
                      "He is one of the developer of this application. He is passionate about programming, backend, and web developing",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200]),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 65,
                    right: 65,
                    bottom: 25,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch(
                                'https://instagram.com/yashgupta3646?igshid=NTdlMDg3MTY='),
                            child: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch(
                                'https://www.facebook.com/profile.php?id=100061747445240'),
                            child: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch('mailto:yashg4180@gmail.com'),
                            child: const Icon(
                              Icons.mail,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 1,
                  width: 300,
                  color: Colors.teal[700],
                ),
              ),

              // Sahil Gupta...
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.teal[800],
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(width: 1, color: Colors.teal.shade600),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.teal.shade900,
                            spreadRadius: 1),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 75,
                    child: InkWell(
                      // ignore: deprecated_member_use
                      onTap: () => launch(
                          'https://instagram.com/sahil__is__here_?igshid=NTdlMDg3MTY='),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img55.jpg'),
                            fit: BoxFit.fill,
                          ),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(75)),
                          border:
                              Border.all(width: 1, color: Colors.teal.shade600),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.teal.shade900,
                                spreadRadius: 1)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: 90,
                    child: Text(
                      "Sahil Gupta",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.teal.shade900,
                                blurRadius: 5,
                                offset: const Offset(2, 2))
                          ],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 10,
                    right: 10,
                    child: Text(
                      "He is one of the developer of this application. He is passionate about programming, web developing and gamming.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200]),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 65,
                    right: 65,
                    bottom: 25,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch(
                                'https://instagram.com/sahil__is__here_?igshid=NTdlMDg3MTY='),
                            child: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch(
                                'https://www.facebook.com/profile.php?id=100016767431352'),
                            child: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch('mailto:sg6946542@gmail.com'),
                            child: const Icon(
                              Icons.mail,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 1,
                  width: 300,
                  color: Colors.teal[700],
                ),
              ),

              // Navya...
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.teal[800],
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(width: 1, color: Colors.teal.shade600),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.teal.shade900,
                            spreadRadius: 1),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 75,
                    child: InkWell(
                      // ignore: deprecated_member_use
                      onTap: () => launch(
                          'https://instagram.com/_____navya____goyal__?igshid=NTdlMDg3MTY='),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img56.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(75)),
                          border:
                              Border.all(width: 1, color: Colors.teal.shade600),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.teal.shade900,
                                spreadRadius: 1)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: 115,
                    child: Text(
                      "Navya",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.teal.shade900,
                                blurRadius: 5,
                                offset: const Offset(2, 2))
                          ],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 10,
                    right: 10,
                    child: Text(
                      "She is one of the developer of this application. She is passionate about different programming languages and backend",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200]),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 95,
                    right: 95,
                    bottom: 25,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch(
                                'https://instagram.com/_____navya____goyal__?igshid=NTdlMDg3MTY='),
                            child: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () =>
                                // ignore: deprecated_member_use
                                launch('mailto:goyalnavya2003@gmail.com'),
                            child: const Icon(
                              Icons.mail,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 1,
                  width: 300,
                  color: Colors.teal[700],
                ),
              ),

              // Sakshi Kumari...
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.teal[800],
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(width: 1, color: Colors.teal.shade600),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.teal.shade900,
                            spreadRadius: 1),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 75,
                    child: InkWell(
                      // ignore: deprecated_member_use
                      onTap: () => launch(
                          'https://instagram.com/sakshi.singhal23?igshid=NTdlMDg3MTY='),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img57.jpg'),
                            fit: BoxFit.fill,
                          ),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(75)),
                          border:
                              Border.all(width: 1, color: Colors.teal.shade600),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.teal.shade900,
                                spreadRadius: 1)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    left: 80,
                    child: Text(
                      "Sakshi Kumari",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.teal.shade900,
                                blurRadius: 5,
                                offset: const Offset(2, 2))
                          ],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 10,
                    right: 10,
                    child: Text(
                      "She is one of the developer of this application. She is passionate about web developing and designing",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[200]),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 95,
                    right: 95,
                    bottom: 25,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch(
                                'https://instagram.com/sakshi.singhal23?igshid=NTdlMDg3MTY='),
                            child: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            // ignore: deprecated_member_use
                            onTap: () => launch('mailto:singhal3680@gmail.com'),
                            child: const Icon(
                              Icons.mail,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              const Center(
                  child: Text(
                "COPYRIGHT ©️ 2022",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
