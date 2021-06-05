import 'package:flutter/material.dart';
import 'meal_content.dart';
import 'package:favorite_cate_flutter/module/home/model/category_model.dart';

class ZYMealPage extends StatelessWidget {

  static const String routename = "/meal";

  @override
  Widget build(BuildContext context) {
    ZYCategoryModel categoryModel =
    ModalRoute.of(context).settings.arguments as ZYCategoryModel;
    return Scaffold(
      appBar: AppBar(title: Text(categoryModel.title)),
      body: ZYMealContent(),
    );
  }
}
