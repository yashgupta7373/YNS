// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yns_college_management/pages/Library/return_book.dart';

class IssueBook extends StatefulWidget {
  String role;
  IssueBook({required this.role, super.key});

  @override
  State<IssueBook> createState() => _IssueBookState();
}

class _IssueBookState extends State<IssueBook> {
  String dropdownBook = 'Book 1';
  String dropdownAuthor = 'Author 1';
  String dropdownClasses = 'Class 1';
  String dropdownStudentName = 'StudentName 1';
  var book = [
    'Book 1',
    'Book 2',
    'Book 3',
    'Book 4',
    'Book 5',
  ];
  var author = [
    'Author 1',
    'Author 2',
    'Author 3',
    'Author 4',
    'Author 5',
  ];
  var classes = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];
  var studentName = [
    'StudentName 1',
    'StudentName 2',
    'StudentName 3',
    'StudentName 4',
    'StudentName 5',
  ];

  // Create Date-time Variable
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
            backgroundColor: Colors.teal[700], elevation: 0, toolbarHeight: 32),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.teal[700],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.teal.shade500,
                        blurRadius: 15,
                        offset: const Offset(0, 10))
                  ]),
              child: Column(children: const [
                Icon(Icons.edit_calendar, size: 120, color: Colors.white),
                Text('Book Issue',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ])),
          // Select Book
          Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  width: mediaQuery.size.width * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.teal[500],
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                          hint: const Text('Select Book'),
                          menuMaxHeight: 300,
                          isExpanded: true,
                          underline: Container(color: Colors.transparent),
                          iconEnabledColor: Colors.white,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                          value: dropdownBook,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: book.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownBook = newValue!;
                            });
                          })))),
          // Select Author
          Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  width: mediaQuery.size.width * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.teal[500],
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                          hint: const Text('Select Author'),
                          menuMaxHeight: 300,
                          isExpanded: true,
                          underline: Container(color: Colors.transparent),
                          iconEnabledColor: Colors.white,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                          value: dropdownAuthor,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: author.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownAuthor = newValue!;
                            });
                          })))),
          // Select Class
          Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  width: mediaQuery.size.width * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.teal[500],
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                          value: dropdownClasses,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: classes.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownClasses = newValue!;
                            });
                          })))),
          // Select Student
          Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  width: mediaQuery.size.width * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.teal[500],
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                          hint: const Text('Select Student Name'),
                          menuMaxHeight: 300,
                          isExpanded: true,
                          underline: Container(color: Colors.transparent),
                          iconEnabledColor: Colors.white,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                          value: dropdownStudentName,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: studentName.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownStudentName = newValue!;
                            });
                          })))),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Display Date
                                Text(
                                    '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 18)),
                                const Icon(Icons.edit_calendar,
                                    color: Colors.white)
                              ]))))),
          // Button
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: ReturnBook(role: widget.role)));
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
                      minimumSize: const Size(200, 45)),
                  child: const Text('Done',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))))
        ]))));
  }
}
