import "package:flutter/material.dart";
import 'meal_detail_content.dart';
import 'package:favorite_cate_flutter/module/meal/model/meal_model.dart';

class ZYMealDetailPage extends StatelessWidget {
  static const String routename = "/meal_detail";
  @override
  Widget build(BuildContext context) {

    final meal = ModalRoute.of(context).settings.arguments as ZYMeal;
    return Scaffold(
      appBar: AppBar(title: Text(meal.title)),
      body: ZYMealDetailContent(meal),
    );
  }
}
