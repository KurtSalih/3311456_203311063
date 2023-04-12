import 'package:flutter/material.dart';
import 'package:seyyarim/screens/components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Parolamı Unuttum",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ForgotPasswordBody(),
    );
  }
}
