import 'package:flutter/material.dart';

import '../components/models/product.dart';
import '../components/rounded_icon_btn.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: RoundedIconBtn(
            iconData: Icons.arrow_back_ios,
            press: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Body(product: arguments.product),
    );
  }
}

/*
class CustomAppBar extends PreferredSize {
  CustomAppBar({required super.child, required super.preferredSize});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return Row();
  }
}
*/
class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
