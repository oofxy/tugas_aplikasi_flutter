import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/widgets/button.dart';
import 'package:get/get.dart';
import '../../adapter/artist_card_adapter.dart';
import '../../controller/library_controller.dart';
import '../../data/artist_data.dart';

class LibraryArtist extends StatelessWidget {
  const LibraryArtist({super.key});

  @override
  Widget build(BuildContext context) {
    LibraryController libraryController = Get.put(LibraryController());

    return Scaffold(
      backgroundColor: color().black,
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyButton(
                      text: "Artist",
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      width: 87,
                      height: 40,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                  SizedBox(width: 10,),
                  MyButton(
                      text: "Music",
                      textColor: Colors.white,
                      backgroundColor: color().black3,
                      onPressed: () {
                        libraryController.pageDecrement();
                      },
                      width: 87,
                      height: 40,
                      fontSize: 16,
                      outlinedColor: color().greyOutlined,
                      fontWeight: FontWeight.w800),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 719,
              width: 500,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: ArtistData().artistData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ArtistCardAdapter(
                      modelCard: ArtistData().artistData[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
