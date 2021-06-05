import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

import 'package:favorite_cate_flutter/module/meal/model/meal_model.dart';
import 'package:favorite_cate_flutter/module/meal/view_model/meal_view_model.dart';
import '../net/meal_request.dart';
import '../../home/model/category_model.dart';

class ZYMealContent extends StatefulWidget {
  @override
  _ZYMealContentState createState() => _ZYMealContentState();
}

class _ZYMealContentState extends State<ZYMealContent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ZYMealRequest.loadMealRequestData();
  }

  @override
  Widget build(BuildContext context) {
    ZYCategoryModel categoryModel =
        ModalRoute.of(context).settings.arguments as ZYCategoryModel;

    return Selector<ZYMealViewModel, List<ZYMeal>>(
      selector: (context, mealModel) {
        if (categoryModel == null) {
          print("缺失 home页面 传递的参数");
          return [];
        };
        return mealModel.meals
            .where((element) => element.categories.contains(categoryModel.id))
            .toList();
      },
      shouldRebuild: (previous, next) => !ListEquality().equals(previous, next),
      builder: (context, meals, child) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (content, index) {
            return Text(meals[index].title);
          },
        );
      },
    );
  }
}
