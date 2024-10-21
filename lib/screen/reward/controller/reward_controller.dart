import 'package:get/get.dart';

class RewardController extends GetxController {
  RxDouble per = 0.0.obs;


  void getPercentage(int total, int right) {

    per.value = (right * 100) / total;
  }
}
