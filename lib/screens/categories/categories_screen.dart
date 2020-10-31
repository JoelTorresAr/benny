import 'package:flutter/material.dart';
import '../../size_config.dart';
import '../../models/category.dart';
import '../../components/categories.dart';
import '../../constants.dart';
import '../../network_utils/api.dart';

class CategoriesScreen extends StatefulWidget {
  static String routeName = "/categories";

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Category> categories = [];

  @override
  void initState() {
    super.initState();
    _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Categorias"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: getProportionateScreenWidth(10),
            left: getProportionateScreenWidth(10),
            right: getProportionateScreenWidth(10)),
        child: SingleChildScrollView(
          child: Wrap(
              spacing: 4.0,
              runSpacing: 2.0,
              children: [Categories(categories: categories)]),
        ),
      )),
    );
  }

  void _getCategories() async {
    var data = {'accesskey': kAccessKey};
    var res = await Network().getData('get-categories.php', data);
    var body = res.data;
    if (!body['error']) {
      final List<dynamic> categoriesJsonList = body['data'];
      final categoriesList =
          Category.collectionFromJsonList(categoriesJsonList);
      if (this.mounted) {
        setState(() {
          categories = categoriesList;
        });
      }
    }else {
      print(body['message']);
    }
  }
}
