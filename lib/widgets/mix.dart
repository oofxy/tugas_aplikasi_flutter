import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/widgets/text.dart';

class MixCard extends StatelessWidget {
  final String image;
  final String mixTitle;
  final String artists;

  const MixCard({super.key, required this.image, required this.artists, required this.mixTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              image,
              height: 240,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          MyText(
            text: mixTitle,
            fontSize: 15,
          ),
          Container(
            width: 170,
            // Ensure this container also limits the width for wrapping
            child: MyText(
              text: artists,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xffa5a5a5),
            ),
          ),
        ],
      ),
    );
  }
}
