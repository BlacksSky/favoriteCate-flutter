import 'package:flutter/cupertino.dart';

import 'package:favorite_cate_flutter/module/meal/model/meal_model.dart';

class ZYFavorViewModel extends ChangeNotifier {
  List<ZYMeal> _favorList = [];

  List<ZYMeal> get favorList{
    return _favorList;
  }

  void addMeal(ZYMeal meal) {
    _favorList.add(meal);
    notifyListeners();
  }

  void removeMeal(ZYMeal meal){
    _favorList.remove(meal);
    notifyListeners();
  }

  void handleMeal(ZYMeal meal){
    if (isFavor(meal)){
      removeMeal(meal);
    }else{
      addMeal(meal);
    }
  }

  bool isFavor(ZYMeal meal){
    return _favorList.contains(meal);
  }

}
