// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:yns_college_management/widgets/input_field_student_registration.dart';

class AddCoursesPage extends StatefulWidget {
  const AddCoursesPage({super.key});
  @override
  State<AddCoursesPage> createState() => _AddCoursesPageState();
}

class _AddCoursesPageState extends State<AddCoursesPage> {
  var dropdowndepartment;
  var dropdownduration;
  var department = [
    'Computer Science Dep.',
    'Commerce & Business Dep.',
    'Teacher Education Dep.',
    'Biotechnology Dep.',
    'B.Sc(Home Science) Dep.',
    'B.Sc Department'
  ];
  var duration = [
    '6 Months',
    '1 Year',
    '2 Years',
    '3 Years',
    '4 Years',
    '5 Years'
  ];
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final TextEditingController idController = TextEditingController();
    final TextEditingController languagesController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController subjectController = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
            title: (const Text("Add Course ")),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // title...
          Center(
              child: SizedBox(
                  width: mediaQuery.size.width * 0.7,
                  height: mediaQuery.size.height * 0.15,
                  child: FittedBox(
                      child: Text("Add Course",
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
                              color: Colors.white))))),
          Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 2),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal[400]),
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ID...
                              Row(children: [
                                const Text('Course ID:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: idController,
                                        keyboard: TextInputType.name))
                              ]),
                              // course...
                              Row(children: [
                                const Text('Course Name:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: nameController,
                                        keyboard: TextInputType.name))
                              ]),
                              // Duration
                              Row(children: [
                                const Text('Course Duration:'),
                                Expanded(
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: DropdownButton(
                                            dropdownColor: Colors.teal[400],
                                            hint: const Text(
                                                'Select Course Duration'),
                                            menuMaxHeight: 300,
                                            isExpanded: true,
                                            underline: Container(
                                              color: Colors.teal[800],
                                              height: 1,
                                            ),
                                            iconEnabledColor: Colors.teal[800],
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 13, 71, 161),
                                                fontSize: 13),
                                            value: dropdownduration,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            items: duration.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items));
                                            }).toList(),
                                            onChanged: (newValue) {
                                              setState(() {
                                                dropdownduration = newValue!;
                                              });
                                            })))
                              ]),
                              // Department
                              Row(children: [
                                const Text('Department:'),
                                Expanded(
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: DropdownButton(
                                            dropdownColor: Colors.teal[400],
                                            hint:
                                                const Text('Select Department'),
                                            menuMaxHeight: 300,
                                            isExpanded: true,
                                            underline: Container(
                                              color: Colors.teal[800],
                                              height: 1,
                                            ),
                                            iconEnabledColor: Colors.teal[800],
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 13, 71, 161),
                                                fontSize: 13),
                                            value: dropdowndepartment,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            items:
                                                department.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items));
                                            }).toList(),
                                            onChanged: (newValue) {
                                              setState(() {
                                                dropdowndepartment = newValue!;
                                              });
                                            })))
                              ]),
                              // subjects
                              Row(children: [
                                const Text('Subjects:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController:
                                            subjectController,
                                        keyboard: TextInputType.name))
                              ]),
                              // Languages
                              Row(children: [
                                const Text('Course Medium(lang.):'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController:
                                            languagesController,
                                        keyboard: TextInputType.name))
                              ])
                            ])),
                    const SizedBox(height: 20.0),
                    // submit button...
                    Padding(
                        padding: const EdgeInsets.only(
                            right: 20, bottom: 15, top: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      elevation: 20,
                                      backgroundColor: Colors.teal[600],
                                      shadowColor: Colors.teal[600],
                                      side: BorderSide(
                                          color: Colors.teal.shade600,
                                          width: 2,
                                          style: BorderStyle.solid),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0)),
                                      minimumSize: const Size(130, 50)),
                                  child: const Text("Submit"))
                            ])),
                    const SizedBox(height: 20.0)
                  ])))
        ])));
  }
}
