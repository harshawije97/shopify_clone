import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final bool isPassword;

  // Constructor
  const TextFieldInput({
    super.key,
    required this.placeholder,
    required this.controller,
    this.isPassword = false,
  });

  // UI method
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: placeholder),
      controller: controller,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "Please enter $placeholder";
        }
        return null;
      },
      obscureText: isPassword,
    );
  }
}
