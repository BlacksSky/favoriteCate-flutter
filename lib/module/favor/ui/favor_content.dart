import 'package:flutter/material.dart';
import 'package:favorite_cate_flutter/global_widget/meal_item.dart';
import 'package:favorite_cate_flutter/module/meal/view_model/favor_view_model.dart';
import 'package:provider/provider.dart';

class ZYFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ZYFavorViewModel>(builder: (context, favorModel, child) {
      if (favorModel.favorList.length == 0) {
        return Center(child: Text("快去收藏自己喜欢的菜谱吧~"));
      }

      return ListView.builder(
          itemCount: favorModel.favorList.length,
          itemBuilder: (itemContext, index) =>
              ZYMealItem(favorModel.favorList[index]));
    });
  }
}
