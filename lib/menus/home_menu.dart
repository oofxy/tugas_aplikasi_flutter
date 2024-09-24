import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/adapter/artist_card_adapter.dart';
import 'package:tugas_aplikasi_musik/adapter/song_adapter.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/data/artist_data.dart';
import 'package:tugas_aplikasi_musik/data/songs_data.dart';
import 'package:tugas_aplikasi_musik/widgets/text.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color().black,
      body: Container(
        margin: EdgeInsets.only(top: 79),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(text: "Artist you might like")
                ],
              ),
            ),
            Container(
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ArtistData().artistData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    // Set horizontal margin
                    child: ArtistCardAdapter(
                      modelCard: ArtistData().artistData[index],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 100,),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(text: "Explore you genre"),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 333,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: SongData().songData.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(bottom: 7),
                    // Set horizontal margin
                    child: SongAdapter(
                      modelSong: SongData().songData[index],
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
