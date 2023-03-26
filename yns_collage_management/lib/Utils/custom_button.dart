// for online class...

import 'package:flutter/material.dart';
// import 'package:yns_collage_management/pages/onlineClass/utils/colors.dart';
// import 'package:zoom_clone_tutorial/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal[700],
          minimumSize: const Size(
            double.infinity,
            50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Color.fromRGBO(0, 150, 136, 1)),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
