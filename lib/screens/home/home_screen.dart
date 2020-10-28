import 'package:logger/logger.dart';
import 'package:DonBenny/network_utils/api.dart';
import 'package:flutter/material.dart';
import 'components/home_drawer.dart';
import 'components/card_with_network_image.dart';
import '../../models/category.dart';
import 'components/body.dart';
import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int currentPage = 0;

  List<Widget> cardList = [
    CardWithNetworkImage(
      imageUrl:
          "http://deliverapp.sedi.pe/deliveryapp/upload/slider/1602478974297.jpg",
    ),
    CardWithNetworkImage(
      imageUrl:
          "http://deliverapp.sedi.pe/deliveryapp/upload/slider/1602478960166.jpg",
    ),
    CardWithNetworkImage(
      imageUrl:
          "http://deliverapp.sedi.pe/deliveryapp/upload/slider/1602478995436.jpg",
    ),
  ];

  List<Category> categories = [];

  @override
  void initState() {
    super.initState();
    _getCategories();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Body(scaffoldKey: _scaffoldKey, cardList: cardList, categories: categories),
      drawer: HomeDrawer(),
    );
  }
 void _getCategories() async {
    var data = {'accesskey': kAccessKey};
    var res = await Network().getData('get-categories.php', data);
    final List<dynamic> categoriesJsonList = res.data['data'];
    final categoriesList = Category.collectionFromJsonList(categoriesJsonList);
    setState(() {
      categories = categoriesList;
    });
  }

}
