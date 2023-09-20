import 'package:flutter/material.dart';

import '../models/product.dart';
import '../screens/product.dart';

class TrendingItem extends StatelessWidget {
  final Product product;
  final List<Color> gradientColors;

  TrendingItem({required this.product, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    double trendCardWidth = 140;

    return GestureDetector(
      child: Stack(
        children: <Widget>[
          Container(
            width: trendCardWidth,
            child: Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Spacer(),
                      ],
                    ),
                    _productImage(),
                    _productDetails()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductPage(
              product,
            ),
          ),
        );
      },
    );
  }

  _productImage() {
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(product.icon), fit: BoxFit.contain),
            ),
          ),
        )
      ],
    );
  }

  _productDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          product.company,
          style: TextStyle(fontSize: 12, color: Color(0XFFb1bdef)),
        ),
        Text(
          product.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
        ),
        Row(
          children: <Widget>[
            Text(product.price,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            Text(
              '#00.000',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  decoration: TextDecoration.lineThrough),
            )
          ],
        )
      ],
    );
  }
}
