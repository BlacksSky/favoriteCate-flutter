import 'package:flutter/cupertino.dart';

class ZYCategoryModel {
  String id;
  String title;
  String color;
  Color showColor;

  ZYCategoryModel({this.id,this.title,this.color});

  ZYCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    color = json["color"];

    int hexInt = int.parse(color,radix: 16);
    showColor = Color(0xff000000 | hexInt);
  }
}
