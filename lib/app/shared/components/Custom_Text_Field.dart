import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType keyboard;

  const CustomTextField({Key key, this.label, this.icon, this.keyboard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: missing_return
      validator: (text) {
        if (text == null || text.isEmpty) {
          return 'O campo e obrigatorio';
        }
      },
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
