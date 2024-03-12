import 'package:get/get.dart';

class BottomBarController extends GetxController {
  RxInt currentIndex = 0.obs;
  @override
  void onInit() {
    print("${Get.width}-----${Get.height}");
    super.onInit();
  }
}
