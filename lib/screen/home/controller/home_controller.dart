import 'package:first_reexam/screen/home/model/home_model.dart';
import 'package:first_reexam/utiles/helper/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Future<HomeModel?>? model;
  RxInt changeQ = 0.obs;
  RxInt selectOption = 0.obs;
  RxInt write = 0.obs;
  RxString check = "".obs;
  RxList correctAnsList = [].obs;
  RxList<AllDataModel> resultList = <AllDataModel>[].obs;

  void getData() {
    model = ApiHelper.apiHelper.quizApi();
  }

  void changeIndex()
  {
    changeQ++;
  }
}
