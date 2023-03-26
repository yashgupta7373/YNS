import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'attendance_taker.dart';

class AttendanceForm extends StatefulWidget {
  const AttendanceForm({super.key});

  @override
  State<AttendanceForm> createState() => _AttendanceFormState();
}

class _AttendanceFormState extends State<AttendanceForm> {
  String dropdownclass = 'Class 1';
  String dropdownteacher = 'Teacher 1';
  String dropdownsubject = 'Subject 1';
  var classes = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];
  var teacher = [
    'Teacher 1',
    'Teacher 2',
    'Teacher 3',
    'Teacher 4',
    'Teacher 5',
  ];
  var subject = [
    'Subject 1',
    'Subject 2',
    'Subject 3',
    'Subject 4',
    'Subject 5',
  ];

  // Create Datetime Variable
  DateTime _dateTime = DateTime.now();

  // Show Date Picker Method
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal[700],
        toolbarHeight: 32,
      ),
      body: Column(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.teal[700],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.teal.shade500,
                      blurRadius: 15,
                      offset: const Offset(0, 10))
                ]),
            child: Column(
              children: const [
                Icon(
                  Icons.edit_calendar,
                  size: 180,
                  color: Colors.white,
                ),
                Text(
                  'Attendance',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Select Class
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: mediaQuery.size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.teal[500],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.teal.shade500,
                                  blurRadius: 15,
                                  offset: const Offset(0, 10))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButton(
                            dropdownColor: Colors.teal[400],
                            hint: const Text('Select Class'),
                            menuMaxHeight: 300,
                            isExpanded: true,
                            underline: Container(color: Colors.transparent),
                            iconEnabledColor: Colors.white,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                            value: dropdownclass,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: classes.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownclass = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    // Select Teachear
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: mediaQuery.size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.teal[500],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.teal.shade500,
                                  blurRadius: 15,
                                  offset: const Offset(0, 10))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButton(
                            dropdownColor: Colors.teal[400],
                            hint: const Text('Select Teacher'),
                            menuMaxHeight: 300,
                            isExpanded: true,
                            underline: Container(color: Colors.transparent),
                            iconEnabledColor: Colors.white,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                            value: dropdownteacher,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: teacher.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownteacher = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    // Select Subject
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: mediaQuery.size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.teal[500],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.teal.shade500,
                                  blurRadius: 15,
                                  offset: const Offset(0, 10))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButton(
                            dropdownColor: Colors.teal[400],
                            hint: const Text('Select Subject'),
                            menuMaxHeight: 300,
                            isExpanded: true,
                            underline: Container(color: Colors.transparent),
                            iconEnabledColor: Colors.white,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                            value: dropdownsubject,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: subject.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownsubject = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    // Select date
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: _showDatePicker,
                        child: Container(
                          width: mediaQuery.size.width * 0.7,
                          height: 47,
                          decoration: BoxDecoration(
                              color: Colors.teal[500],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.teal.shade500,
                                    blurRadius: 15,
                                    offset: const Offset(0, 10))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Display Date
                                Text(
                                  '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                const Icon(Icons.edit_calendar,
                                    color: Colors.white)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Button
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: const AttendanceTaker()));
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shadowColor: Colors.teal[500],
                            side: BorderSide(
                                color: Colors.teal.shade500,
                                width: 2,
                                style: BorderStyle.solid),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            minimumSize: const Size(200, 45),
                          ),
                          child: const Text(
                            'Done',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
