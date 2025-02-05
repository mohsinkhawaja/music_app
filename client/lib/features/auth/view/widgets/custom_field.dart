import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isobscureText;

  const CustomField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isobscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) {
        if (val!.trim().isEmpty) {
          return "$hintText is missing";
        } else {
          return null;
        }
      },
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      obscureText: isobscureText,
    );
  }
}
