import 'package:flutter/material.dart';
import 'icon_btn_with_counter.dart';
import '../../../size_config.dart';
import '../../../constants.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey, super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconBtnWithCounter(
                press: () => _scaffoldKey.currentState.openDrawer(),
                icon: Icons.menu),
            SizedBox(
              width: SizeConfig.screenWidth * 0.04,
            ),
            Text(
              "Don Benny",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: SizeConfig.screenWidth * 0.05),
            )
          ],
        ),
        IconBtnWithCounter(
            press: () {}, icon: Icons.shopping_cart, numOfItems: 3)
      ],
    );
  }
}
