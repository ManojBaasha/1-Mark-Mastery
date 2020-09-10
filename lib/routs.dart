import 'package:flutter/widgets.dart';

import 'package:class_app/screens/splash/splash_screen.dart';
import 'package:class_app/screens/splash/components/body.dart';
import 'package:class_app/main.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  FrontPage.routeName: (context) => FrontPage(),
  MyApp.routeName: (context) => MyApp()
};
