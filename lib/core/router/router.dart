
import 'package:flutter/cupertino.dart';
import '../../module/home/ui/home.dart';
import '../../module/favor/ui/favor.dart';
import '../../module/main/main.dart';
import '../../module/meal/ui/meal.dart';

class ZYRouter {
  static final String initialRoute = ZYMainPage.routeName;

  static final Map<String, WidgetBuilder> routes = {
    ZYMainPage.routeName: (ctx) => ZYMainPage(),
    ZYHomePage.routeName: (ctx) => ZYHomePage(),
    ZYFavorPage.routeName: (ctx) => ZYFavorPage(),
    ZYMealPage.routename: (ctx) => ZYMealPage(),
  };

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}