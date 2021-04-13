import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:toast/toast.dart';

class PopMessage {
  static void show(String? message, BuildContext context) {
    if (message != null) {
      Toast.show(
        message,
        context,
        duration: Toast.LENGTH_LONG,
        gravity: Toast.BOTTOM,
      );
    }
  }
}
