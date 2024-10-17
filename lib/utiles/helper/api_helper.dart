import 'dart:convert';

import 'package:first_reexam/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static ApiHelper apiHelper = ApiHelper._();

  ApiHelper._();

  Future<HomeModel?> quizApi() async {
    String link =
        "https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple";
    var response = await http.get(
      Uri.parse(link),
    );

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      HomeModel model = HomeModel.mapToModel(json);
      print("=============$json");
      return model;
    }
    return null;
  }
}
