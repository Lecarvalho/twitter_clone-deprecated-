import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextboxWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? label;
  final int? maxLength;

  TextboxWidget({
    required this.controller,
    required this.hintText,
    this.label,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength)
      ],
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
      ),
    );
  }
}
