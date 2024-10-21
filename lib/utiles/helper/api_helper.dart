import 'dart:convert';

import 'package:first_reexam/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static ApiHelper apiHelper = ApiHelper._();

  ApiHelper._();

  Future<HomeModel?> quizApi({int? cate, int? qa, String? diff}) async {
    print("===========$qa===========$cate===========$diff");
    String link =
        "https://opentdb.com/api.php?amount=$qa&category=$cate&difficulty=$diff&type=multiple";
    var response = await http.get(
      Uri.parse(link),
    );

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      HomeModel model = HomeModel.mapToModel(json);

      return model;
    }
    return null;
  }
}
