import 'dart:convert';

import 'package:first_reexam/screen/category/model/category_model.dart';
import 'package:flutter/services.dart';

class JsonHelper {
  static JsonHelper jsonHelper = JsonHelper._();

  JsonHelper._();

  Future<CategoryModel> getCategory() async {

    String jsonRoot = await rootBundle.loadString("assets/json/category_json.json");
    var json = jsonDecode(jsonRoot);
    CategoryModel model = CategoryModel.mapToModel(json);
    return model;
  }
}
