// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mest_auth_screen/components/background_full_image.dart';
import 'package:mest_auth_screen/components/button.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          BackgroundFullImage(),
          Positioned(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: fullWidth * 0.8,
                  child: Text(
                    "The Best app for your plant",
                    style: TextStyle(
                        fontSize: fullWidth * 0.15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: fullHeight * 0.2,
                ),
                Column(
                  children: [
                    Button(
                      color: Colors.white,
                      textColor: Colors.green,
                      text: "Sign Up",
                      navigateTo: "/register",
                    ),
                    SizedBox(
                      height: fullHeight * 0.02,
                    ),
                    Button(
                      color: Colors.green,
                      textColor: Colors.white,
                      text: "Login",
                      navigateTo: "/login",
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
