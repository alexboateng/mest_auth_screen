// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mest_auth_screen/components/background_full_image.dart';
import 'package:mest_auth_screen/components/button.dart';
import 'package:mest_auth_screen/components/text_input.dart';
import 'package:mest_auth_screen/components/text_input_with_icon.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                child: Container(
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmfk_oGGJgXgh9wKB2jI1wyGPxA8GUPbvFHQ&usqp=CAU",
                      width: fullWidth * 0.2,
                      height: fullWidth * 0.2,
                    ),
                  ),
                  SizedBox(
                    height: fullHeight * 0.05,
                  ),
                  Expanded(
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
                                    Text(
                                      "Welcome back",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: fullWidth * 0.08),
                                    ),
                                    Text("Login into your account"),
                                    SizedBox(
                                      height: fullHeight * 0.04,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 6,
                                          child: TextInput(
                                            labelTextValue: 'Email/User Name',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: fullHeight * 0.015,
                                    ),
                                    TextInputWithIcon(
                                      labelTextValue: 'password',
                                    ),
                                    SizedBox(
                                      height: fullHeight * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                                value: "1",
                                                groupValue: 1,
                                                onChanged: (value) {}),
                                            Text("Remmember me "),
                                          ],
                                        ),
                                        Text(
                                          "Forgot pasword?",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green),
                                        ),
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
                                text: "Login",
                                textColor: Colors.white,
                                navigateTo: "/login",
                              ),
                              SizedBox(
                                height: fullHeight * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Dont have an account? "),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed("/register");
                                    },
                                    child: Text(
                                      " Sign Up",
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
