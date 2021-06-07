import 'package:flutter/material.dart';
import 'home_content.dart';
import 'home_appbar.dart';

class ZYHomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZYHomeAppBar(context),
      body: ZYHomeContent(),
    );
  }
}
