import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/adapter/artist_card_adapter.dart';
import 'package:tugas_aplikasi_musik/adapter/mix_card_adapter.dart';
import 'package:tugas_aplikasi_musik/adapter/song_adapter.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/data/artist_data.dart';
import 'package:tugas_aplikasi_musik/data/mix_data.dart';
import 'package:tugas_aplikasi_musik/data/songs_data.dart';
import 'package:tugas_aplikasi_musik/widgets/text.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color().black,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText(text: "Artist you might like")
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 320,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 320,
                    viewportFraction: 0.905,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  items: ArtistData().artistData.map((artist) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ArtistCardAdapter(
                        modelCard: artist,
                      ),
                    );
                  }).toList(),
                ),
                // ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: ArtistData().artistData.length,
                //   itemBuilder: (context, index) {
                //     return Container(
                //       margin: EdgeInsets.symmetric(horizontal: 10),
                //       // Set horizontal margin
                //       child: ArtistCardAdapter(
                //         modelCard: ArtistData().artistData[index],
                //       ),
                //     );
                //   },
                // ),
              ),
              SizedBox(height: 60,),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText(text: "Explore you genre"),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: SongData().songData1.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 7),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: SongAdapter(
                        modelSong: SongData().songData1[index],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: SongData().songData2.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 7),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: SongAdapter(
                        modelSong: SongData().songData2[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText(text: "Your mixes"),
                  ],
                ),
              ),
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: MixData().mixData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 7),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: MixCardAdapter(mixCardModel: MixData().mixData[index])
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
