import 'package:flutter/material.dart';

// for displaying snackbar
showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: const Color.fromARGB(255, 17, 116, 85),
      elevation: 5,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(5)));
}
