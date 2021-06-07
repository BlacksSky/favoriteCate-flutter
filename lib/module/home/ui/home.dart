import 'package:flutter/material.dart';
import 'home_content.dart';
import 'home_appbar.dart';
import 'home_drawer.dart';

class ZYHomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZYHomeAppBar(),
      body: ZYHomeContent(),
      drawer: ZYHomeDrawer(),
    );
  }
}
