import 'package:get/get.dart';

class LibraryController extends GetxController {
  // Singleton instance
  static LibraryController get to => Get.find();

  // Publicly accessible variable
  var page = 0.obs;

  void changePage(dynamic artistPage, dynamic musicPage) {
    if (page.value == 0) {
      artistPage();
    } else {
      musicPage();
    }
  }

  void pageIncrement() {
    page.value = 0;
  }

  void pageDecrement() {
    page.value = 1;
  }
}
