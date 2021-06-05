
import 'package:flutter/cupertino.dart';

import '../net/meal_request.dart';
import '../model/meal_model.dart';
import 'package:provider/provider.dart';

class ZYMealViewModel extends ChangeNotifier{

  ZYMealModel _mealModel;

  List<ZYMeal> get meals{
    if(_mealModel == null) return [];
    return _mealModel.meal;
  }

  ZYMealViewModel(){
    ZYMealRequest.loadMealRequestData().then((value) {
      _mealModel = value;
      notifyListeners();
    });
  }
}
