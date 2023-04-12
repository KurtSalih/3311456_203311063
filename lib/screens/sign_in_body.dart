import 'package:flutter/material.dart';

import 'package:seyyarim/screens/components/sign_form.dart';
import 'package:seyyarim/screens/sign_up.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Tekrar Hoşgeldiniz",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "E-posta ve şifre girin \nya da sosyal medya ile devam edin. ",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              SignForm(),
              Container(
                padding: EdgeInsets.all(12),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.facebook),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hesabınız yok mu?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text("Hesap Açın"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
