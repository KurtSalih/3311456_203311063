import 'package:flutter/material.dart';
import 'package:seyyarim/screens/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up_screen";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            "Kayıt Ol",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SignUpBody(),
    );
  }
}
