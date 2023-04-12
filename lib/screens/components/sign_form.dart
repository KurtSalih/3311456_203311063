import 'package:flutter/material.dart';
import 'package:seyyarim/screens/forgot_password.dart';
import 'package:seyyarim/screens/login_success.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                setState(() {
                  errors.add("E-posta girdisi yok");
                });
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: "E-posta",
                hintText: "E-postanızı giriniz",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(Icons.email),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color(0xFF757575)),
                    gapPadding: 10),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: Color(0xFF757575)),
                )),
          ),
          SizedBox(height: 20),
          buildPasswordFormField(),
          SizedBox(height: 20),
          formErrorText(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginSuccessScreen()),
              );
            },
            child: Text("DEVAM"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Color(0xFFFF7643),
              textStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class formErrorText extends StatelessWidget {
  const formErrorText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Checkbox(
            value: false,
            onChanged: (value) {},
          ),
        ),
        SizedBox(width: 20),
        Text("Beni Hatırla"),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ForgotPasswordScreen(),
              ),
            );
          },
          child: Text("Parolamı Unuttum"),
        ),
      ],
    );
  }
}

class buildPasswordFormField extends StatelessWidget {
  const buildPasswordFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Şifre",
          hintText: "Şifrenizi giriniz",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Icon(Icons.lock),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: Color(0xFF757575),
            ),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: Color(0xFF757575)),
          )),
    );
  }
}
