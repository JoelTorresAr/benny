import 'package:flutter/material.dart';
import 'size_config.dart';

const kPrimaryColor = Color(0xFF056533);
const kAlertColor = Color(0xFFFF4848);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: FractionalOffset(0.2, 0.0),
    stops: [0.0, 0.6],
    tileMode: TileMode.clamp,
    colors: [ Color(0xFF28963C),Color(0xFF056533)]);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5);

// Form Error
//final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp emailValidatorRegExp = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
const String kEmailNullError = "Por favor ingrese su email";
const String kInvalidEmailError = "Por favor ingrese un email valido";
const String kPassNullError = "Por favor ingrese su contraseña";
const String kShortPassError = "La contraseña demasiado corta";
const String kMatchPassError = "Las contraseñas no coinciden";
const String kNameNullError = "Por favor ingrese su nombre";
const String kPhoneNumberNullError = "Por favor ingrese su telefono";
const String kAddressNullError = "Por favor ingrese su direccion";

final otpInputDecoration = InputDecoration(
    contentPadding:
        EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    enabledBorder: outlineInputBorder(),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder());

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: kPrimaryColor));
}