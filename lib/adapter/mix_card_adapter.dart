import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/models/mix_card_modekl.dart';
import 'package:tugas_aplikasi_musik/widgets/mix.dart';

class MixCardAdapter extends StatelessWidget {
  final MixCardModel mixCardModel;

  const MixCardAdapter({super.key, required this.mixCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MixCard(
          image: mixCardModel.image,
          artists: mixCardModel.artists,
          mixTitle: mixCardModel.mixTitle),
    );
  }
}
