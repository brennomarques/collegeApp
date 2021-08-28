import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType keyboard;
  final String Function(String text) validator;
  final Void Function(String text) onSave;

  const CustomTextField({
    Key key,
    this.label,
    this.icon,
    this.keyboard,
    this.validator,
    this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onSaved: onSave,
      decoration: InputDecoration(
        labelText: label,
        hintText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        prefixIcon: Icon(icon),
      ),
      keyboardType: keyboard,
    );
  }
}
