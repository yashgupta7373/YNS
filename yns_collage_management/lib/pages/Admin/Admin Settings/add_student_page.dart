// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yns_college_management/widgets/input_field_student_registration.dart';
import '../../../Resources/auth_method.dart';
import '../../../Utils/utils.dart';

class SRegistrationPage extends StatefulWidget {
  const SRegistrationPage({super.key});
  @override
  State<SRegistrationPage> createState() => _SRegistrationPageState();
}

class _SRegistrationPageState extends State<SRegistrationPage> {
  var role = 'student';
  var gender = '';
  var Category = '';
  // var SubCategory = '';
  // var OrdinaryResidentOf = '';
  // var ParticipationInSports = '';
  // var Graduationform = '';
  // var spouse = '';
  //controller
  bool _isLoading = false;
  final TextEditingController sessionController = TextEditingController();
  // final TextEditingController classController = TextEditingController();
  final TextEditingController rollnoController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherController = TextEditingController();
  final TextEditingController motherController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController aadharController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();
  final TextEditingController IncomeController = TextEditingController();
  final TextEditingController AddressController = TextEditingController();
  final TextEditingController MobileController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  // final TextEditingController departmentController = TextEditingController();
  //
  String dropdownclass = 'Class 1';
  String dropdowndepartment = 'Department 1';
  var classes = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];
  var department = [
    'Department 1',
    'Department 2',
    'Department 3',
    'Department 4',
    'Department 5',
  ];

  @override
  void dispose() {
    super.dispose();
    sessionController.dispose();
    // classController.dispose();
    rollnoController.dispose();
    nameController.dispose();
    fatherController.dispose();
    motherController.dispose();
    dateController.dispose();
    aadharController.dispose();
    occupationController.dispose();
    IncomeController.dispose();
    AddressController.dispose();
    MobileController.dispose();
    EmailController.dispose();
    PasswordController.dispose();
    // departmentController.dispose();
  }

  void AddStudent() async {
    // set loading to true
    setState(() {
      _isLoading = true;
    });

    // Add Student  using our authMethods
    String res = await AuthMethods().AddStudent(
        role: role,
        email: EmailController.text,
        password: PasswordController.text,
        rollNo: rollnoController.text,
        Class: dropdownclass,
        aadharNo: aadharController.text,
        address: AddressController.text,
        category: Category,
        dob: dateController.text,
        fName: fatherController.text,
        gIncome: IncomeController.text,
        gOccupation: occupationController.text,
        department: dropdowndepartment,
        gender: gender,
        mName: motherController.text,
        name: nameController.text,
        phoneNo: MobileController.text,
        session: sessionController.text);
    // if string returned is success, user has been created
    if (res == "Success") {
      // navigate to the home screen
      Navigator.pop(context);
      Navigator.pop(context);
      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
    }
    // show the error
    showSnackBar(context, res);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
            title: (const Text("Student Registration ")),
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
                      child: Text("Student\n Registration",
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
                              // Academic Session...
                              Row(children: [
                                const Text('Academic Session:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController:
                                            sessionController,
                                        keyboard: const TextInputType
                                            .numberWithOptions(signed: true)))
                              ]),
                              // class...
                              Row(children: [
                                const Text('Class:'),
                                Expanded(
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: DropdownButton(
                                            dropdownColor: Colors.teal[400],
                                            hint: const Text('Select Class'),
                                            menuMaxHeight: 300,
                                            isExpanded: true,
                                            underline:
                                                Container(color: Colors.black),
                                            iconEnabledColor: Colors.teal[800],
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 13, 71, 161),
                                                fontSize: 13),
                                            value: dropdownclass,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            items: classes.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items));
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownclass = newValue!;
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
                                                color: Colors.transparent),
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
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdowndepartment = newValue!;
                                              });
                                            })))
                              ]),
                              // rollno...
                              Row(children: [
                                const Text('University Roll No.:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: rollnoController,
                                        keyboard: TextInputType.text))
                              ])
                            ]))
                  ]))),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
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
                              // student name...
                              Row(children: [
                                const Text('Name of Candidate:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: nameController,
                                        keyboard: TextInputType.name))
                              ]),
                              // father name...
                              Row(children: [
                                const Text("Father's Name:"),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: fatherController,
                                        keyboard: TextInputType.name))
                              ]),
                              // mother name...
                              Row(children: [
                                const Text("Mother's Name:"),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: motherController,
                                        keyboard: TextInputType.name))
                              ]),
                              // student dob...
                              Row(children: [
                                const Text("Date of Birth:"),
                                Expanded(
                                    child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: TextField(
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.blue[900]),
                                          controller: dateController,
                                          decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.all(8),
                                              icon: Icon(
                                                Icons.calendar_today_rounded,
                                                // color: Colors.teal[800],
                                              ),
                                              hintText: "Select Date"),
                                          onTap: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(1900),
                                                    lastDate: DateTime.now());
                                            if (pickedDate != null) {
                                              setState(() {
                                                dateController.text =
                                                    DateFormat('dd-MM-yyyy')
                                                        .format(pickedDate);
                                              });
                                            }
                                          },
                                        )))
                              ]),
                              // aadhar number...
                              Row(children: [
                                const Text("Aadhar No:"),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: aadharController,
                                        keyboard: TextInputType.datetime))
                              ])
                            ]))
                  ]))),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal[400]),
                  child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // gender...
                            const Text("GENDER"),
                            FittedBox(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  const Text('Male'),
                                  Radio(
                                      value: 'male',
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      }),
                                  SizedBox(width: mediaQuery.size.width * 0.1),
                                  const Text('female'),
                                  Radio(
                                      value: 'female',
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      }),
                                  SizedBox(width: mediaQuery.size.width * 0.1),
                                  const Text('Other'),
                                  Radio(
                                      value: 'other',
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      })
                                ])),
                            const Divider(
                                color: Colors.teal,
                                height: 25,
                                thickness: 1,
                                indent: 5,
                                endIndent: 5),
                            // category...
                            const Text("CATEGORY"),
                            FittedBox(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  const Text('Gen'),
                                  Radio(
                                      value: 'gen',
                                      groupValue: Category,
                                      onChanged: (value) {
                                        setState(() {
                                          Category = value.toString();
                                        });
                                      }),
                                  SizedBox(width: mediaQuery.size.width * 0.1),
                                  const Text('OBC'),
                                  Radio(
                                      value: 'OBC',
                                      groupValue: Category,
                                      onChanged: (value) {
                                        setState(() {
                                          Category = value.toString();
                                        });
                                      }),
                                  SizedBox(width: mediaQuery.size.width * 0.1),
                                  const Text('SC'),
                                  Radio(
                                      value: 'SC',
                                      groupValue: Category,
                                      onChanged: (value) {
                                        setState(() {
                                          Category = value.toString();
                                        });
                                      }),
                                  SizedBox(width: mediaQuery.size.width * 0.1),
                                  const Text('ST'),
                                  Radio(
                                      value: 'ST',
                                      groupValue: Category,
                                      onChanged: (value) {
                                        setState(() {
                                          Category = value.toString();
                                        });
                                      })
                                ])),
                            const Divider(
                                color: Colors.teal,
                                height: 25,
                                thickness: 1,
                                indent: 5,
                                endIndent: 5),
                            // occupation and income...
                            const Text("Guardian's"),
                            Row(children: [
                              const Text("Occupation:"),
                              Expanded(
                                  child: InputFieldStudentRegistration(
                                      textEditingController:
                                          occupationController,
                                      keyboard: TextInputType.text))
                            ]),
                            Row(children: [
                              const Text("Income(Per Annum):"),
                              Expanded(
                                  child: InputFieldStudentRegistration(
                                      textEditingController: IncomeController,
                                      keyboard: TextInputType.datetime))
                            ])
                          ])))),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
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
                              Row(children: [
                                // address...
                                const Text('Address:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController:
                                            AddressController,
                                        keyboard: TextInputType.text))
                              ]),
                              // phone number...
                              Row(children: [
                                const Text("Mobile NO:"),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: MobileController,
                                        keyboard: TextInputType.datetime))
                              ]),
                              // email id...
                              Row(children: [
                                const Text("E-mail ID:"),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: EmailController,
                                        keyboard: TextInputType.emailAddress))
                              ]),
                              // create password...
                              Row(children: [
                                const Text("Create Password:"),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController:
                                            PasswordController,
                                        keyboard: TextInputType.text))
                              ]),
                              const SizedBox(height: 20.0),
                              // submit button...
                              Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, bottom: 15, top: 5),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              AddStudent();
                                            },
                                            style: ElevatedButton.styleFrom(
                                                elevation: 20,
                                                backgroundColor:
                                                    Colors.teal[600],
                                                shadowColor: Colors.teal[600],
                                                side: BorderSide(
                                                    color: Colors.teal.shade600,
                                                    width: 2,
                                                    style: BorderStyle.solid),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0)),
                                                minimumSize:
                                                    const Size(130, 50)),
                                            child: !_isLoading
                                                ? const Text('Submit')
                                                : const CircularProgressIndicator(
                                                    color: Color.fromARGB(
                                                        255, 115, 162, 170)))
                                      ]))
                            ]))
                  ]))),
          const SizedBox(height: 20.0)
        ])));
  }
}
