import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../models/product.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(product.image),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
           /* Text.rich(TextSpan(
                text: "\$${product.price}",
                style: TextStyle(color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: " x${product.stock}",
                      style: TextStyle(color: kTextColor))
                ]))*/
          ],
        )
      ],
    );
  }
}
