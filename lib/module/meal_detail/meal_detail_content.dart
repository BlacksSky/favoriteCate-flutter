import "package:flutter/material.dart";
import 'package:favorite_cate_flutter/module/meal/model/meal_model.dart';
import 'package:favorite_cate_flutter/base/extension/fit_size_extension.dart';

class ZYMealDetailContent extends StatelessWidget {
  final ZYMeal _meal;

  ZYMealDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: Column(
        children: [
          buildImageInfo(),
          buildTitleInfo(context, "食材"),
          buildIngredientsInfo(context),
          buildTitleInfo(context, "步骤"),
          buildStepsInfo(context),
        ],
      ),
    );
  }

  Widget buildImageInfo() {
    return Image.network(_meal.imageUrl,
        fit: BoxFit.cover, height: 150.px, width: double.infinity);
  }

  Widget buildIngredientsInfo(BuildContext context) {
    return buildMakeContainer(
        context: context,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: _meal.ingredients.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.amber,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Text(_meal.ingredients[index])),
              );
            }));
  }

  Widget buildStepsInfo(BuildContext context) {
    return buildMakeContainer(
        context: context,
        child: ListView.separated(
          padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _meal.steps.length,
            itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(child: Text("# $index")),
                title: Text(_meal.steps[index])),
            separatorBuilder: (context, index) =>
                Padding(child: Divider(), padding: EdgeInsets.only(left: 15))));
  }

  Widget buildTitleInfo(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .display3
            .copyWith(fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );
  }

  //  公共的样式的container
  Widget buildMakeContainer({BuildContext context, Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      width: MediaQuery.of(context).size.width - 30,
      padding: EdgeInsets.all(8),
      child: child,
    );
  }
}
