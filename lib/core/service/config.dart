import 'package:dio/dio.dart';

class ZYHttpConfig {
  static BaseOptions baseOptions =
      BaseOptions(baseUrl: baseUrl, connectTimeout: connectTimeout);
  static String baseUrl = "http://123.207.32.32:8001/api";
  static int connectTimeout = 5000;
  static Map<String, dynamic> baseParams = {
    "key": KAPPKEY,
  };
  static String KAPPKEY = "756128f075a7cfac6215c3de4f073f68";
}

class ZYHomeConfig {
  static int HomeListCount = 20;
}