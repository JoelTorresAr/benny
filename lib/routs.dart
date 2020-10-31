import 'package:DonBenny/screens/subCategories/sub_categories_screen.dart';

import 'screens/sign_in/sign_in_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/screen_trips_off.dart';

import 'screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// We use name routes
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ScreenTripsOff.routeName: (context) => ScreenTripsOff(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SubCategoriesScreen.routeName: (context) => SubCategoriesScreen(),
};