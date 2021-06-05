import 'package:flutter/material.dart';
import '../../../core/service/json_parse.dart';
import '../model/category_model.dart';

class ZYHomeContentItem extends StatelessWidget {
  final ZYCategoryModel _categoryModel;

  ZYHomeContentItem(this._categoryModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            _categoryModel.showColor.withOpacity(0.5),
            _categoryModel.showColor
          ])),
      child: Text(_categoryModel.title,
          style: Theme.of(context).textTheme.display2.copyWith(
              fontWeight: FontWeight.bold, color: Colors.black87)),
      alignment: Alignment.center,
    );

  }
}
