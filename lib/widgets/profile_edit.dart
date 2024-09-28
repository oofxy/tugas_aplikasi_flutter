import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/widgets/text.dart';

class ProfileEdit extends StatelessWidget {
  final String title;
  final String subTitle;

  const ProfileEdit({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: title,
                fontSize: 24,
              ),
              MyText(
                text: subTitle,
                fontSize: 15,
                color: Colors.grey.shade400,
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
