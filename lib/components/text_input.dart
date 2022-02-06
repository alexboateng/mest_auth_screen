// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput({Key? key, required this.labelTextValue}) : super(key: key);
  String labelTextValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(2),
          border: InputBorder.none,
          labelText: labelTextValue,
          labelStyle: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
