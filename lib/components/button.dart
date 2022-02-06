import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.color,
      required this.text,
      required this.textColor,
      required this.navigateTo})
      : super(key: key);
  final Color color;
  final String text;
  final Color textColor;
  final String navigateTo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        onPressed: () {
          Navigator.of(context).pushNamed(navigateTo);
        },
        child: Text(
          text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
