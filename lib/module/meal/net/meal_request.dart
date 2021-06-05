import '../../../core/service/http_request.dart';

import '../model/meal_model.dart';

class ZYMealRequest {

  static Future<ZYMealModel> loadMealRequestData() async{
    String url = "/meal";
    final result = await ZYHttpRequest.request(url);
    return ZYMealModel.fromJson(result);
  }
}