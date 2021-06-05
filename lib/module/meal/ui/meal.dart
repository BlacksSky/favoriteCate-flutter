import 'package:flutter/material.dart';
import 'meal_content.dart';

class ZYMealPage extends StatelessWidget {

  static const String routename = "/meal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("内容")),
      body: ZYMealContent(),
    );
  }
}
