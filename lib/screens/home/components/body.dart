import 'package:DonBenny/components/section_title.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'home_header.dart';
import 'search_field.dart';
import 'home_carousel_slider.dart';
import '../../../components/categories.dart';
import '../../../models/category.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
    @required this.cardList,
    @required this.categories,
  }) : _scaffoldKey = scaffoldKey, super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final List<Widget> cardList;
  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(10),
            right: getProportionateScreenWidth(10),
            top: getProportionateScreenWidth(5)
            ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(scaffoldKey: _scaffoldKey),
              SizedBox(
                height: getProportionateScreenWidth(5),
              ),
              SearchField(),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              HomeCarouselSlider(cardList: cardList),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              SectionTitle(text: "Comprar por categoría", press: null),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              Categories(categories: categories),
            ],
          ),
        ),
      ),
    );
  }
}
