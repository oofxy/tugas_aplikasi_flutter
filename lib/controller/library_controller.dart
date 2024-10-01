import 'package:get/get.dart';

import '../models/card_artist_model.dart';

class LibraryController extends GetxController {
  static LibraryController get to => Get.find();
  var page = 0.obs;
  var library = <ModelCard>[].obs;

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

  void addToLibrary(ModelCard artist) {
    if (!library.contains(artist)) {
      library.add(artist);
    }
    artist.isFavorite = true;
  }

  void removeFromLibrary(ModelCard artist) {
    if (library.contains(artist)) {
      library.remove(artist);
    }
    artist.isFavorite = false;
  }
}
