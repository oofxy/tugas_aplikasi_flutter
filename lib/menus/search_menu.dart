import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/adapter/genre_adapter.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/data/genre_data.dart';
import 'package:tugas_aplikasi_musik/widgets/genre_card.dart';
import 'package:tugas_aplikasi_musik/widgets/text.dart';
import 'package:tugas_aplikasi_musik/widgets/text_field.dart';
import 'package:tugas_aplikasi_musik/controller/search_controller.dart';
import '../adapter/song_adapter.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchControllers searchController = Get.put(SearchControllers());

    return Scaffold(
      backgroundColor: color().black,
      body: Container(
        margin: EdgeInsets.only(top: 79),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(text: "Explore"),
                ],
              ),
            ),
            SizedBox(height: 10),
            MyTextField(
              onChange: (query) => searchController.filterItems(query ?? ''),
              hintText: "What are you looking for?",
              textColor: Colors.white,
              backgroundColor: color().black2,
              isObscured: false,
              hintTextColor: color().greyTextColor,
              height: 45,
              width: double.infinity,
              controller: TextEditingController(), // Use a single controller if needed
            ),
            SizedBox(height: 10),
            Container(
              height: 47,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: GenreData().genreDataRow1.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 7),
                    child: GenreAdapter(
                      genreCardModel: GenreData().genreDataRow1[index],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 47,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: GenreData().genreDataRow2.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 7),
                    child: GenreAdapter(
                      genreCardModel: GenreData().genreDataRow2[index],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 47,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: GenreData().genreDataRow3.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 7),
                    child: GenreAdapter(
                      genreCardModel: GenreData().genreDataRow3[index],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 35), // Space before results title
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText(text: "Result"),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: searchController.filteredData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 7),
                      child: SongAdapter(
                        modelSong: searchController.filteredData[index],
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
