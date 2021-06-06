import 'package:favorite_cate_flutter/module/meal/view_model/favor_view_model.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'meal_detail_content.dart';
import 'package:favorite_cate_flutter/module/meal/model/meal_model.dart';
import '../meal/view_model/meal_view_model.dart';

class ZYMealDetailPage extends StatelessWidget {
  static const String routename = "/meal_detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as ZYMeal;
    return Scaffold(
      appBar: AppBar(title: Text(meal.title)),
      body: ZYMealDetailContent(meal),
      floatingActionButton: Consumer<ZYFavorViewModel>(
        builder: (context, value, child) {
          bool isFavor = value.isFavor(meal);

          final iconData = isFavor ? Icons.favorite : Icons.favorite_border;
          final color = isFavor ? Colors.red : Colors.black;
          return FloatingActionButton(
            child: Icon(iconData, color: color),
            onPressed: () {
              value.handleMeal(meal);
            },
          );
        },
      ),
    );
  }
}
