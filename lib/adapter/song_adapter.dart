import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/models/song_model.dart';
import 'package:tugas_aplikasi_musik/widgets/item.dart';

class SongAdapter extends StatelessWidget {
  final ModelSong modelSong;

  const SongAdapter({super.key, required this.modelSong});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Item(
              image: modelSong.image,
              name: modelSong.name,
              artistName: modelSong.artisName,
              sideColor: modelSong.sideColour),
        ],
      ),
    );
  }
}
