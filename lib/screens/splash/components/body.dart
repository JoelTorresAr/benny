import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/scheduler.dart';
import '../../../network_utils/api.dart';

import '../../../constants.dart';
import '../../sign_in/sign_in_screen.dart';
import '../../../size_config.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key key, @required GlobalKey<ScaffoldState> scaffoldKey})
      : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isLoading = true;
  void _showMsg(msg) {
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    widget._scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    _generateToken(context);
    if (_isLoading) {}
    SizeConfig().init(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: kPrimaryGradientColor),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Stack(overflow: Overflow.visible, children: [
          Center(child: Image.asset("assets/images/logo.jpg")),
          Center(child: CircularProgressIndicator()),
        ]),
      ),
    );
  }

  void _generateToken(BuildContext ctx) async {
    setState(() {
      _isLoading = true;
    });

    var res = await Network().authData('generate-token.php');
    var body = res.data;
    if (!body['error']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacementNamed(SignInScreen.routeName);
      });
    } else {
      _showMsg(body['message']);
    }
  }
}
