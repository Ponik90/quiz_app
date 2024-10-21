import 'package:first_reexam/screen/home/model/home_model.dart';
import 'package:get/get.dart';

import '../../../utiles/helper/api_helper.dart';

class HomeController extends GetxController {
  Future<HomeModel?>? model;
  RxInt changeQ = 0.obs;
  RxInt selectOption = 0.obs;
  RxInt right = 0.obs;
  RxString check = "".obs;
  RxList correctAnsList = [].obs;
  RxList<AllDataModel> resultList = <AllDataModel>[].obs;

  void getData({String? diff, int? qa, int? id}) {
    model = ApiHelper.apiHelper.quizApi(
      cate: id,
      qa: qa,
      diff: diff,
    );
  }

  void changeIndex() {
    changeQ++;
  }
}
