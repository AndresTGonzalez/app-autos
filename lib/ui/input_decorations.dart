import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecorations({
    required String hintText,
    required String labelText,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      // ignore: prefer_const_constructors
      enabledBorder: UnderlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFF0D0D0D),
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF0D0D0D),
          width: 2,
        ),
      ),
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(
        color: Colors.grey,
      ),
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: Color(0xFF0D0D0D))
          : null,
    );
  }
}
