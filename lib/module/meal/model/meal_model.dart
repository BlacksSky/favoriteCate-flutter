// To parse this JSON data, do
//
//     final zyMealModel = zyMealModelFromJson(jsonString);

import 'dart:convert';

ZYMealModel zyMealModelFromJson(String str) =>
    ZYMealModel.fromJson(json.decode(str));

String zyMealModelToJson(ZYMealModel data) => json.encode(data.toJson());

class ZYMealModel {
  ZYMealModel({this.meal});

  List<ZYMeal> meal;

  factory ZYMealModel.fromJson(Map<String, dynamic> json) => ZYMealModel(
        meal: List<ZYMeal>.from(json["meal"].map((x) => ZYMeal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meal": List<dynamic>.from(meal.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return 'ZYMealModel{meal: $meal}';
  }
}

List complexityStringList = ["简单", "中等", "困难"];

class ZYMeal {
  ZYMeal({
    this.id,
    this.categories,
    this.title,
    this.affordability,
    this.complexity,
    this.complexityString,
    this.imageUrl,
    this.duration,
    this.ingredients,
    this.steps,
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
  });

  String id;
  List<String> categories;
  String title;
  int affordability;
  int complexity;
  String complexityString;
  String imageUrl;
  int duration;
  List<String> ingredients;
  List<String> steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;

  factory ZYMeal.fromJson(Map<String, dynamic> json) => ZYMeal(
        id: json["id"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        title: json["title"],
        affordability: json["affordability"],
        complexity: json["complexity"],
        complexityString: complexityStringList[json["complexity"]],
        imageUrl: json["imageUrl"],
        duration: json["duration"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        steps: List<String>.from(json["steps"].map((x) => x)),
        isGlutenFree: json["isGlutenFree"],
        isVegan: json["isVegan"],
        isVegetarian: json["isVegetarian"],
        isLactoseFree: json["isLactoseFree"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "title": title,
        "affordability": affordability,
        "complexity": complexity,
        "imageUrl": imageUrl,
        "duration": duration,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "steps": List<dynamic>.from(steps.map((x) => x)),
        "isGlutenFree": isGlutenFree,
        "isVegan": isVegan,
        "isVegetarian": isVegetarian,
        "isLactoseFree": isLactoseFree,
      };

  @override
  String toString() {
    return 'Meal{id: $id, categories: $categories, title: $title, affordability: $affordability, complexity: $complexity, imageUrl: $imageUrl, duration: $duration, ingredients: $ingredients, steps: $steps, isGlutenFree: $isGlutenFree, isVegan: $isVegan, isVegetarian: $isVegetarian, isLactoseFree: $isLactoseFree}';
  }
}
