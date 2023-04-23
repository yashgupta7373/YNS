import 'package:flutter/material.dart';

class InputFieldStudentRegistration extends StatelessWidget {
  final TextEditingController textEditingController;
  const InputFieldStudentRegistration(
      {Key? key, required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textEditingController,
        cursorColor: Colors.black,
        style: TextStyle(
            fontSize: 13, fontStyle: FontStyle.normal, color: Colors.blue[900]),
        decoration: const InputDecoration(contentPadding: EdgeInsets.all(8)));
  }
}
