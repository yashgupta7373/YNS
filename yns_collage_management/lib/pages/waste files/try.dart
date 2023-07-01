// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously, prefer_typing_uninitialized_variables
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:yns_college_management/widgets/input_field_student_registration.dart';
import 'dart:typed_data';

class Try extends StatefulWidget {
  const Try({super.key});
  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  var transport = '';
  bool _isLoading = false;
  final TextEditingController idController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  Uint8List? _image;
  //

  @override
  var dropdownprofile;
  var profile = [
    'HOD',
    'Assistant Professor',
    'Associate Professor',
    'Professor',
    'Namely',
  ];

  void AddAdminOrTeacher() async {
    Map<String, String> Notice = {
      'ID': idController.text,
      'profile': dropdownprofile,
      'name': nameController.text,
      'Dob': dateController.text,
      'transport': transport,
    };
    dbRef.push().set(Notice);
  }

  // for picking up image from gallery
  pickImage(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: source);
    if (file != null) {
      return await file.readAsBytes();
    }
  }

  //select image
  selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  //real time Database...
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref('ClgManagement').child('Notice').child('class');
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.teal[300],
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //Id, Job Profile
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
                                Text('ID:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: idController,
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
                                              color: Colors.teal[800],
                                              height: 1,
                                            ),
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
                                            onChanged: (newValue) {
                                              setState(() {
                                                dropdownprofile = newValue!;
                                              });
                                            })))
                              ]),
                            ]))
                  ]))),
          //image
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal[400]),
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Stack(
                          children: [
                            _image != null
                                ? CircleAvatar(
                                    radius: 64,
                                    backgroundImage: MemoryImage(_image!),
                                    backgroundColor: Colors.teal,
                                  )
                                : const CircleAvatar(
                                    radius: 64,
                                    backgroundImage: NetworkImage(
                                        'https://i.stack.imgur.com/l60Hf.png'),
                                    backgroundColor: Colors.teal,
                                  ),
                            Positioned(
                              bottom: -10,
                              left: 80,
                              child: IconButton(
                                onPressed: selectImage,
                                icon: const Icon(
                                  Icons.add_a_photo,
                                  color: Color.fromARGB(255, 0, 73, 65),
                                ),
                              ),
                            )
                          ],
                        )),
                  ))),
          //Name, Date of birth
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
                                Text('Name:'),
                                Expanded(
                                    child: InputFieldStudentRegistration(
                                        textEditingController: nameController,
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
                            ]))
                  ]))),
          //transport
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
                            // College Transport...
                            const Text("Use College Transport"),
                            FittedBox(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  const Text('Yes'),
                                  Radio(
                                      value: 'Yes',
                                      groupValue: transport,
                                      onChanged: (value) {
                                        setState(() {
                                          transport = value.toString();
                                        });
                                      }),
                                  SizedBox(width: mediaQuery.size.width * 0.1),
                                  const Text('No'),
                                  Radio(
                                      value: 'No',
                                      groupValue: transport,
                                      onChanged: (value) {
                                        setState(() {
                                          transport = value.toString();
                                        });
                                      }),
                                ])),
                          ])))),
          // submit button
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
                                              // Map<String, String> detail = {
                                              //   'ID': idController.text,
                                              //   'profile': dropdownprofile,
                                              //   'name': nameController.text,
                                              //   'Dob': dateController.text,
                                              //   'transport': transport
                                              // };
                                              // dbRef.push().set(detail);
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
          const SizedBox(height: 20.0),
        ])));
  }
}
