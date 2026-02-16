import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String placeholder;
  const TextFieldInput({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(hintText: placeholder));
  }
}
