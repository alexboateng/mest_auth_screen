// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mest_auth_screen/components/background_full_image.dart';
import 'package:mest_auth_screen/components/button.dart';
import 'package:mest_auth_screen/components/text_input.dart';
import 'package:mest_auth_screen/components/text_input_with_icon.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          const BackgroundFullImage(),
          Container(
            padding: EdgeInsets.fromLTRB(0, fullHeight * 0.05, 0, 0),
            child: Positioned(
                child: SizedBox(
              height: fullHeight,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/getstarted");
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.white,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: fullHeight * 0.05,
                  ),
                  Column(
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: fullWidth * 0.08),
                      ),
                      Text(
                        "Create your new account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: fullHeight * 0.05,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: fullWidth,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: fullWidth * 0.85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    TextInput(
                                      labelTextValue: 'First Name',
                                    ),
                                    SizedBox(
                                      height: fullHeight * 0.015,
                                    ),
                                    TextInput(
                                      labelTextValue: 'Last Name',
                                    ),
                                    SizedBox(
                                      height: fullHeight * 0.015,
                                    ),
                                    TextInput(
                                      labelTextValue: 'Email',
                                    ),
                                    SizedBox(
                                      height: fullHeight * 0.015,
                                    ),
                                    TextInputWithIcon(
                                      labelTextValue: 'Confirm password',
                                    ),
                                    SizedBox(
                                      height: fullHeight * 0.015,
                                    ),
                                    TextInputWithIcon(
                                      labelTextValue: 'Confirm password',
                                    ),
                                    SizedBox(
                                      height: fullHeight * 0.015,
                                    ),
                                    Wrap(
                                      alignment: WrapAlignment.center,
                                      children: [
                                        Text(
                                          "By signing up, you aggree to our",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Text(" Terms of use"),
                                        Text(" and"),
                                        Text(" privacy policy",
                                            style:
                                                TextStyle(color: Colors.green)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Button(
                                color: Colors.green,
                                text: "Sign Up",
                                textColor: Colors.white,
                                navigateTo: "/register",
                              ),
                              SizedBox(
                                height: fullHeight * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Already have an account? "),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed("/login");
                                    },
                                    child: Text(
                                      " Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
