import 'dart:convert';
import 'package:flutter/services.dart';
import '../../module/home/model/category_model.dart';

class JsonParse {
  static Future<List<ZYCategoryModel>> loadLocalJsonData() async {
    String jsonString =
        await rootBundle.loadString("assets/json/category.json");
    dynamic result = json.decode(jsonString);

    List<ZYCategoryModel> categorys = [];

    final listResult = result["category"];

    for (var json in listResult) {
      ZYCategoryModel model = ZYCategoryModel.fromJson(json);
      categorys.add(model);
    }
    return categorys;
  }
}
