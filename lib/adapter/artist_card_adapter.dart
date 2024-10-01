import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/models/card_artist_model.dart';
import 'package:tugas_aplikasi_musik/widgets/card_artist.dart';

import '../controller/library_controller.dart';

class ArtistCardAdapter extends StatelessWidget {
  final ModelCard modelCard;

  const ArtistCardAdapter({super.key, required this.modelCard});

  @override
  Widget build(BuildContext context) {
    final LibraryController libraryController = Get.find(); // Get the controller

    return Container(
      child: Row(
        children: [
          CardArtist(
            image: modelCard.image,
            name: modelCard.name,
            followers: modelCard.followers,
            backgroundColor: modelCard.backgroundColor,
            onPressed: () {
              if(modelCard.isFavorite){
                libraryController.removeFromLibrary(modelCard);
              } else
              libraryController.addToLibrary(modelCard);
            },
            isFavorite: modelCard.isFavorite,
          )
        ],
      ),
    );
  }
}

