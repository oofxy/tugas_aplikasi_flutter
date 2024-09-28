import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/models/card_artist_model.dart';
import 'package:tugas_aplikasi_musik/widgets/card_artist.dart';

class ArtistCardAdapter extends StatelessWidget {
  final ModelCard modelCard;

  const ArtistCardAdapter({super.key, required this.modelCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CardArtist(
              image: modelCard.image,
              name: modelCard.name,
              followers: modelCard.followers,
              iconOnPressed: () {},
              backgroundColor: modelCard.backgroundColor)
        ],
      ),
    );
  }
}
