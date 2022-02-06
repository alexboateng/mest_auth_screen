import 'package:flutter/material.dart';
import 'package:mest_auth_screen/gettingstarted.dart';
import 'package:mest_auth_screen/loginpage.dart';
import 'package:mest_auth_screen/registerpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/getstarted": (context) => const GettingStarted(),
        "/login": (context) => const LoginPage(),
        "/register": (context) => const RegisterPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GettingStarted(),
    );
  }
}
