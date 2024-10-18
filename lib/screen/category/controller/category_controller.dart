import 'package:first_reexam/screen/category/model/category_model.dart';
import 'package:first_reexam/utiles/helper/json_helper.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  Rx<CategoryModel> model = CategoryModel().obs;

  Future<void> getCategory() async {
    model.value = await JsonHelper.jsonHelper.getCategory();
    print("===========s${model.value.category}");
  }
}
