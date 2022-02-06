// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextInputWithIcon extends StatelessWidget {
  TextInputWithIcon({Key? key, required this.labelTextValue}) : super(key: key);
  String labelTextValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 6,
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
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.visibility_off,
                color: Colors.teal.shade800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
