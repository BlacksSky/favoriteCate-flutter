import 'package:favorite_cate_flutter/module/ui/main/main.dart';
import 'package:flutter/cupertino.dart';
import '../../ui/home/home.dart';
import '../../ui/favor/favor.dart';

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