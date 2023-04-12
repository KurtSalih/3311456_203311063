import 'package:flutter/material.dart';

import '../../components/models/product.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
        ),
      ],
    );
  }
}
