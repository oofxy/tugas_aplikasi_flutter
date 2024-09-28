import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/models/song_model.dart';
import 'package:tugas_aplikasi_musik/data/songs_data.dart';

class SearchControllers extends GetxController {
  var songData = <ModelSong>[].obs;
  var filteredData = <ModelSong>[].obs;

  @override
  void onInit() {
    songData.value = SongData().songData;
    filteredData.value = songData;
  }

  void filterItems(String query) {
    if (query.isEmpty) {
      filteredData.value = songData;
    } else {
      filteredData.value = songData
          .where((item) => item.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}
