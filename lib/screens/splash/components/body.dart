import 'dart:async';

import 'package:DonBenny/constants.dart';
import 'package:DonBenny/screens/screen_trips.dart';
import 'package:DonBenny/size_config.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, ScreenTrips.routeName);
    });
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: kPrimaryGradientColor),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Stack(overflow: Overflow.visible, children: [
          Center(child: Image.asset("assets/images/logo.jpg")),
          Center(child: CircularProgressIndicator())
        ]),
      ),
    );
  }
}
