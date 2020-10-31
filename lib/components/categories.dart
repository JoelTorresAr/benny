import 'package:flutter/material.dart';
import '../models/category.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 3.0,
      runSpacing: 2.0,
      children: [
        ...List.generate(categories.length,
            (index) => CategoryCard(category: categories[index]))
      ],
    );
  }
}