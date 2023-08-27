
import 'package:dio/dio.dart';

class dioHilber {
  static Dio? dio;

  static init() {
    dio = Dio(
        BaseOptions(
          baseUrl: "https://osta1223.000webhostapp.com/",
          receiveDataWhenStatusError: true,

        )
    );
  }

  static Future<Response>   getData({
    required String url,
    Map <String, dynamic>? query,
    String? lang = "ar",
    String? id
  }) async
  {
    dio!.options.headers = {
      'lang': lang,
      'Authorization': id
    };

    return await dio!.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map <String, dynamic>? query,
    required FormData data,
    String? lang = "ar",
    String? token

  }) async
  {
    dio!.options.headers = {
      'lang': lang,
      'Authorization': token,
      "Content-Type": "application/json"
    };

    return dio!.post(
      url,
      data: data,
    );
  }
}

