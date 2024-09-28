import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/widgets/text.dart';

class PlaylistCard extends StatelessWidget {
  final String playlistName;
  final String madeBy;
  final String image;

  const PlaylistCard(
      {super.key,
      required this.playlistName,
      required this.madeBy,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        width: 342,
        decoration: BoxDecoration(color: color().black),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                image,
                height: 210,
                width: 210,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 17),
              height: 225,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Playlist Name",
                    fontSize: 15,
                  ),
                  MyText(
                    text: playlistName,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyText(
                    text: "Made by",
                    fontSize: 15,
                  ),
                  MyText(
                    text: madeBy,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}
