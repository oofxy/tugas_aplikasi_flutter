import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/models/playlist_model.dart';
import 'package:tugas_aplikasi_musik/widgets/playlist_card.dart';

class PlaylistAdapter extends StatelessWidget {
  final PlaylistModel playlistModel;

  const PlaylistAdapter({super.key, required this.playlistModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          PlaylistCard(
              playlistName: playlistModel.playlistName,
              madeBy: playlistModel.madeBy,
              image: playlistModel.image)
        ],
      ),
    );
  }
}
