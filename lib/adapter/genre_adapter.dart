import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/models/genre_card_model.dart';
import 'package:tugas_aplikasi_musik/widgets/genre_card.dart';

class GenreAdapter extends StatelessWidget {
  final GenreCardModel genreCardModel;

  const GenreAdapter({super.key, required this.genreCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GenreCard(text: genreCardModel.text)
        ],
      ),
    );
  }
}
