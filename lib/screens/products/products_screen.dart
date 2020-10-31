import 'dart:convert';

import 'package:DonBenny/models/sub_category.dart';
import 'package:DonBenny/network_utils/api.dart';
import 'package:DonBenny/screens/cart/components/product_card.dart';

import '../../models/product.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../constants.dart';
import '../../size_config.dart';

class ProductsScreen extends StatefulWidget {
  static String routeName = "/products";

  final SubCategory subCategory;

  const ProductsScreen({Key key, @required this.subCategory}) : super(key: key);
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    _getProductsBySubCatId(widget.subCategory);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Productos')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(products.length,
                    (index) => ProductCard(product: products[index]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _getProductsBySubCatId(SubCategory subCategory) async {
    var data = {'accesskey': kAccessKey, 'subcategory_id': subCategory.id};
    var res =
        await Network().getData('get-products-by-subcategory-id.php', data);
    var body = json.decode(res.data);
    final logger = Logger(
        printer: PrettyPrinter(methodCount: 0, colors: false, lineLength: 90));

    logger.i('products');
    logger.v(body);

    if (body['error']) {
      print(body['message']);
    } else {
      final List<dynamic> productsJsonList = body['data'];
      final productsList = Product.collectionFromJsonList(productsJsonList);
      print(productsList);
      setState(() {
        products = productsList;
      });
    }
  }
}
