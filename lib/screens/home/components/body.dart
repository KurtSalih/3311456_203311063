import 'package:flutter/material.dart';

import 'package:seyyarim/screens/home/components/categories.dart';
import 'package:seyyarim/screens/home/components/discount_banner.dart';
import 'package:seyyarim/screens/home/components/home_header.dart';

import '../../components/popular_products.dart';
import '../../components/product_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 30),
            DiscountBanner(),
            SizedBox(height: 30),
            Categories(),
            SizedBox(height: 30),
            SpecialOffers(),
            SizedBox(height: 30),
            PopularProducts(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
