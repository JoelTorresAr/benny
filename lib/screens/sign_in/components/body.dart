import '../../../size_config.dart';
import '../../../constants.dart';
import '../../../components/no_account_text.dart';
import '../../../components/social_card.dart';
import 'package:flutter/material.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {

  const Body({Key key, @required GlobalKey<ScaffoldState> scaffoldKey,}) : _scaffoldKey = scaffoldKey, super(key: key);
  
  final GlobalKey<ScaffoldState> _scaffoldKey;

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Bienvenido",
                style: headingStyle),
              Text(
                "Iniciar sesión con tu numero e telefono \ny contraseña",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignForm(scaffoldKey: _scaffoldKey),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              NoAccountText()
            ],
          ),
        ),
      ),
    ));
  }
}
