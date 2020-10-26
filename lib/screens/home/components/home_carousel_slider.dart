import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../constants.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({
    Key key,
    @required this.cardList,
  }) : super(key: key);

  final List<Widget> cardList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: cardList,
        options: CarouselOptions(
          height: getProportionateScreenWidth(150),
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: kAnimationDuration,
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
          aspectRatio: 2.0,
          onPageChanged: (index, reason) {},
        ));
  }
}
