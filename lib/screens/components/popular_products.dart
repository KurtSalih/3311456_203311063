import 'package:flutter/material.dart';
import 'package:seyyarim/screens/components/product_card.dart';
import 'package:seyyarim/screens/details/details_screen.dart';

import '../home/components/section_title.dart';
import 'models/product.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Puanı yüksek olanlar",
          press: () {},
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
