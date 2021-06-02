import 'package:flutter/material.dart';

class ZYFavorPage extends StatelessWidget {
  static const String routeName = "/favor";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("收藏"),
        ),
        body: Center(
          child: Text("收藏"),
        )
    );
  }
}
