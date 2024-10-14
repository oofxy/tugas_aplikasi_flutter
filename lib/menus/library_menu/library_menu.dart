import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/controller/library_controller.dart';
import 'package:tugas_aplikasi_musik/menus/library_menu/library_artist.dart';
import 'package:tugas_aplikasi_musik/menus/library_menu/library_music.dart';
import '../../colors/color.dart';
import '../../widgets/text.dart';

class LibraryMenu extends StatelessWidget {
  const LibraryMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final LibraryController libraryController = Get.put(LibraryController());

    return Scaffold(
      backgroundColor: color().black,
      body: Container(
        margin: EdgeInsets.only(top: 79),
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(text: "Library"),
                ],
              ),
            ),
            Expanded(
              child: Obx(() {
                // Check the current page and return the corresponding widget
                return libraryController.page.value == 0
                    ? LibraryArtist()
                    : LibraryMusic();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
