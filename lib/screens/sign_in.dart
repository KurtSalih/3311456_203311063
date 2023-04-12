import 'package:flutter/material.dart';
import 'package:seyyarim/screens/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            "GİRİŞ",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SignInBody(),
    );
  }
}
