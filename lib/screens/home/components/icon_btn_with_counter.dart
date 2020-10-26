import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
    @required this.icon,
    this.numOfItems = 0,
    @required this.press,
  }) : super(key: key);

  final IconData icon;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            //height: 50,
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: Icon(
              icon,
              size: SizeConfig.screenWidth * 0.06,
              color: kTextColor,
            ),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -2,
              right: 0,
              child: Container(
                height: getProportionateScreenHeight(20),
                width: getProportionateScreenWidth(20),
                decoration: BoxDecoration(
                    color: Color(0xFFFF4848),
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    style: TextStyle(
                        color: Colors.white,
                        height: 1,
                        fontSize: getProportionateScreenWidth(10),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
