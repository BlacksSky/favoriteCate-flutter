import 'package:flutter/material.dart';
import 'package:favorite_cate_flutter/module/meal/model/meal_model.dart';
import 'package:favorite_cate_flutter/base/extension/fit_size_extension.dart';
import 'default_button.dart';

class ZYMealItem extends StatelessWidget {
  final ZYMeal _meal;
  final double radiusValue = 12;

  ZYMealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusValue)),
      child: Column(
        children: [
          buildBasicInfo(context),
          buildOperationInfo(),
        ],
      ),
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: Image.network(
            _meal.imageUrl,
            width: double.infinity,
            height: 150.px,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              double progress = loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes;
              return Container(
                  alignment: Alignment.center,
                  height: 150.px,
                  child: CircularProgressIndicator(value: progress));
            },
            errorBuilder: (context, error, stackTrace) {
              return Container(
                  child: Icon(
                    Icons.error,
                    size: 150,
                  ),
                  width: double.infinity,
                  height: 150.px);
            },
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radiusValue),
              topRight: Radius.circular(radiusValue)),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),

            // width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.black54),

            child: Text(_meal.title,
                style: Theme.of(context)
                    .textTheme
                    .display3
                    .copyWith(color: Colors.white),
                overflow: TextOverflow.ellipsis),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ZYDefaultButton(
            Icon(
              Icons.schedule,
            ),
            titleString: "${_meal.duration} 分钟",
          ),
          ZYDefaultButton(
            Icon(
              Icons.restaurant,
            ),
            titleString: _meal.complexityString,
          ),
          ZYDefaultButton(
            Icon(
              Icons.favorite_border,
            ),
            titleString: "未收藏",
          ),
        ],
      ),
    );
  }
}
