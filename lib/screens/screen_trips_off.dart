import 'package:DonBenny/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import 'cart/cart_screen.dart';
import 'categories/categories_screen.dart';
import 'favorites/favorites_screen.dart';
class ScreenTripsOff extends StatefulWidget {
  static String routeName = "/tripsOf";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ScreenTripsOff();
    
  }
}

class _ScreenTripsOff extends State<ScreenTripsOff> {
  int indexTap = 0;
  
  final List<Widget> widgetsChildren = [
    HomeScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    CartScreen()
  ];
  void onTapTapped(int index) {
    setState(() {
      this.indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home , color: kPrimaryColor), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.now_widgets , color: kPrimaryColor), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite , color: kPrimaryColor), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag , color: kPrimaryColor), label: ""),
          ])),
    );
  }
}

