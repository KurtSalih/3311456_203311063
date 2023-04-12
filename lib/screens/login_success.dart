import 'package:flutter/material.dart';
import 'package:seyyarim/screens/login_success_body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String _routeName = "/login_success_screen";

  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 50),
        ),
      ),
      body: LoginSuccessBody(),
    );
  }
}
