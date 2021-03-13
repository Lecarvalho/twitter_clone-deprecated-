import 'package:flutter/material.dart';

class TextboxWidget extends StatelessWidget {

  final TextEditingController controller;
  TextboxWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    );
  }
}