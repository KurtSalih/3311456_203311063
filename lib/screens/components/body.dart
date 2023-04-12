import 'package:flutter/material.dart';
import 'package:seyyarim/screens/sign_in.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      "SEYYARIM",
                      style: TextStyle(
                        fontSize: 36,
                        color: Color(0xFFFF7643),
                      ),
                    ),
                    Text(
                      "Hizmetinizdeyiz",
                      style: TextStyle(
                        color: Color(0xFF979797),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Image.asset(
                      "assets/images/splash_1.png",
                      height: 265,
                      width: 235,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
