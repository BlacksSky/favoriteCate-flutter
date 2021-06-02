
import 'package:flutter/cupertino.dart';
import '../../module/home/home.dart';
import '../../module/favor/favor.dart';
import '../../module/main/main.dart';

class ZYRouter {
  static final String initialRoute = ZYMainPage.routeName;

  static final Map<String, WidgetBuilder> routes = {
    ZYMainPage.routeName: (ctx) => ZYMainPage(),
    ZYHomePage.routeName: (ctx) => ZYHomePage(),
    ZYFavorPage.routeName: (ctx) => ZYFavorPage(),
  };

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}