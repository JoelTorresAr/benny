import 'screens/sign_in/sign_in_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/screen_trips.dart';

import 'screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// We use name routes
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ScreenTrips.routeName: (context) => ScreenTrips(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};