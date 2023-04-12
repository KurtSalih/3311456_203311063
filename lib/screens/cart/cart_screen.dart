import 'package:flutter/material.dart';

import 'components/body.dart';



class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Text(
            "Sepetiniz",
            style: TextStyle(color: Colors.black),
          ),
          ///Text("data")
        ],
      ),
    );
  }
}
