import 'package:flutter/material.dart';
import 'package:yns_collage_management/Widgets/input_field_student_registration.dart';

class SRegistrationPage extends StatelessWidget {
  const SRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final TextEditingController classController = TextEditingController();
    final TextEditingController sessionController = TextEditingController();
    final TextEditingController meritController = TextEditingController();
    final TextEditingController rollnoController = TextEditingController();
    final TextEditingController unidateController = TextEditingController();
    final TextEditingController unireginoController = TextEditingController();
    final TextEditingController clgdateController = TextEditingController();
    final TextEditingController clgreginoController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: mediaQuery.size.width * 0.7,
                height: mediaQuery.size.height * 0.15,
                child: FittedBox(
                  child: Text(
                    "Student\n Registration",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.teal.shade900,
                              blurRadius: 5,
                              offset: const Offset(2, 2))
                        ],
                        // fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 2),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[400],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text('Academic Session:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: sessionController),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Merit Index:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: meritController),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Class:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: classController),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text('University Roll No.:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: rollnoController),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.teal,
                      height: 25,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text('Univerasity Registration No.:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: unireginoController),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Date of Registration:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: unidateController),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.teal,
                      height: 25,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(child: Text('FOR COLLEGE OFFICE USE')),
                          Row(
                            children: [
                              const Text('College Registration No.:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: clgreginoController),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Date of Registration:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: clgdateController),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Signature of Clerk:'),
                              Expanded(
                                child: InputFieldStudentRegistration(
                                    textEditingController: meritController),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[400],
                ),
                child: Column(children: [
                  Row(
                    children: const [],
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
