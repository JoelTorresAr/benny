import 'package:DonBenny/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import 'cart/cart_screen.dart';
import 'categories/categories_screen.dart';
import 'favorites/favorites_screen.dart';

class ScreenTrips extends StatelessWidget {
  static String routeName = "/trips";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.white.withAlpha(50),
                icon: Icon(
                  Icons.home,
                  color: kPrimaryColor,
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.white.withAlpha(50),
                icon: Icon(
                  Icons.now_widgets,
                  color: kPrimaryColor,
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.white.withAlpha(50),
                icon: Icon(
                  Icons.favorite,
                  color: kPrimaryColor,
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.white.withAlpha(50),
                icon: Icon(
                  Icons.shopping_bag,
                  color: kPrimaryColor,
                )),
          ]),
          tabBuilder: (BuildContext context, int index){
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeScreen(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => CategoriesScreen(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => FavoritesScreen(),
                );
                break;
              default:
                return CupertinoTabView(
                  builder: (BuildContext context) => CartScreen(),
                );
                break;
            }
          }),
    );
  }
}
