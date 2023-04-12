import 'package:flutter/material.dart';
import 'package:seyyarim/screens/home/home_screen.dart';

class LoginSuccessBody extends StatelessWidget {
  const LoginSuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 40),
          Image.asset(
            "assets/images/success.png",
            height: 400,
          ),
          SizedBox(height: 40),
          Text(
            "Giriş Başarılı",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(flex: 1),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: Text("Anasayfaya Dön"),
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
