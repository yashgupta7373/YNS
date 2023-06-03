// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:yns_college_management/widgets/input_field_student_registration.dart';
import '../../../Resources/auth_method.dart';
import '../../../Utils/utils.dart';

class TRegistrationPage extends StatefulWidget {
  const TRegistrationPage({super.key});
  @override
  State<TRegistrationPage> createState() => _TRegistrationPageState();
}

class _TRegistrationPageState extends State<TRegistrationPage> {
  var role = '';
  var gender = '';
  bool _isLoading = false;
  final TextEditingController idController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController profileController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController languagesController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherController = TextEditingController();
  final TextEditingController motherController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController aadharController = TextEditingController();
  final TextEditingController AddressController = TextEditingController();
  final TextEditingController MobileController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  //
  String dropdownclass = 'Class 1';
  var classes = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];
  @override
  void dispose() {
    super.dispose();
    idController.dispose();
    subjectController.dispose();
    profileController.dispose();
    departmentController.dispose();
    languagesController.dispose();
    nameController.dispose();
    fatherController.dispose();
    motherController.dispose();
    dateController.dispose();
    aadharController.dispose();
    AddressController.dispose();
    MobileController.dispose();
    EmailController.dispose();
    PasswordController.dispose();
  }

  //
  String dropdowndepartment = 'Department 1';
  String dropdownprofile = 'profile 1';
  String dropdownsubject = 'profile 1';
  var department = [
    'Department 1',
    'Department 2',
    'Department 3',
    'Department 4',
    'Department 5',
  ];
  var profile = [
    'profile 1',
    'profile 2',
    'profile 3',
    'profile 4',
    'profile 5',
  ];
  var subject = [
    'profile 1',
    'profile 2',
    'profile 3',
    'profile 4',
    'profile 5',
  ];

  void AddAdminOrTeacher() async {
    // set loading to true
    setState(() {
      _isLoading = true;
    });

    // Add Student  using our authMethods
    String res = await AuthMethods().AddAdminOrTeacher(
        email: EmailController.text,
        password: PasswordController.text,
        aadharNo: aadharController.text,
        address: AddressController.text,
        dob: dateController.text,
        fName: fatherController.text,
        gender: gender,
        mName: motherController.text,
        name: nameController.text,
        phoneNo: MobileController.text,
        department: dropdowndepartment,
        id: idController.text,
        language: languagesController.text,
        profile: profileController.text,
        subject: subjectController.text,
        role: role);
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
            title: (const Text("Teachers & Admin Registration ")),
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
                      child: Text("Teachers & Admin\n Registration",
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
          // Role, Id, Subject, Job Profile, Department
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
                              // Role...
                              Column(children: [
                                const Text("Role: "),
                                Center(
                                    child: FittedBox(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                      const Text('Admin'),
                                      Radio(
                                          value: 'admin',
                                          groupValue: role,
                                          onChanged: (value) {
                                            setState(() {
                                              role = value.toString();
                                            });
                                          }),
                                      SizedBox(
                                          width: mediaQuery.size.width * 0.1),
                                      const Text('Teacher'),
                                      Radio(
                                          value: 'teacher',
                                          groupValue: role,
                                          onChanged: (value) {
                                            setState(() {
                                              role = value.toString();
                                            });
                                          })
                                    ])))
                              ]),
                              // ID...
                              Row(children: [
                                Text('$role ID:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: idController,
                                        keyboard: TextInputType.text))
                              ]),
                              // subjects...
                              Row(children: [
                                const Text('Subjects:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController:
                                            subjectController,
                                        keyboard: TextInputType.text))
                              ]),
                              // Profile
                              Row(children: [
                                const Text('Job Profile:'),
                                Expanded(
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: DropdownButton(
                                            dropdownColor: Colors.teal[400],
                                            hint: const Text(
                                                'Select Job Profile'),
                                            menuMaxHeight: 300,
                                            isExpanded: true,
                                            underline: Container(
                                                color: Colors.transparent),
                                            iconEnabledColor: Colors.teal[800],
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 13, 71, 161),
                                                fontSize: 13),
                                            value: dropdownprofile,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            items: profile.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items));
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownprofile = newValue!;
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
                              // Languages
                              Row(children: [
                                const Text('Languages:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController:
                                            languagesController,
                                        keyboard: TextInputType.text))
                              ])
                            ]))
                  ]))),
          //Name, Father Name, Mother Name, Date of birth, Aadhar No.
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
                              // name...
                              Row(children: [
                                Text('$role Name:'),
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
                                    child: InputFieldStudentRegistration(
                                        textEditingController: dateController,
                                        keyboard: TextInputType.number))
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
          // Gender
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
                                ]))
                          ])))),
          //Address, Mobile No, Email Id, Password
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
                                              AddAdminOrTeacher();
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
