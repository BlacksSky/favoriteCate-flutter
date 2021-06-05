import 'package:flutter/material.dart';
import 'module/main/main.dart';
import 'core/router/router.dart';
import 'shared/app_theme.dart';
import 'module/meal/view_model/meal_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (content) => ZYMealViewModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ZYAppTheme.defaultThemeData,
      darkTheme: ZYAppTheme.darkTheme,
      initialRoute: ZYRouter.initialRoute,
      routes: ZYRouter.routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ZYMainPage();
  }
}
