import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/widgets/button.dart';

class CardArtist extends StatelessWidget {
  final String image;
  final String name;
  final String followers;
  final Color backgroundColor;
  final VoidCallback iconOnPressed;

  const CardArtist({
    super.key,
    required this.image,
    required this.name,
    required this.followers,
    required this.iconOnPressed,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 305,
      width: 375,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(6.0)),
                child: Image.network(
                  image,
                  height: 175,
                  width: 375,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 175,
                width: 375,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    end: Alignment.bottomCenter,
                    begin: Alignment.center,
                    colors: [
                      Colors.transparent, // Adjust opacity for darkness
                      Colors.black.withOpacity(0.3), // Adjust opacity for darkness
                    ],
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            title: Stack(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'AnonymousPro-Bold',
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: Text(
                    followers + "K Followers",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'AnonymousPro-Bold',
                    ),
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: iconOnPressed,
              icon: Icon(
                Icons.more_horiz,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: MyButton(
              text: "Follow",
              textColor: Colors.black,
              backgroundColor: Colors.white,
              onPressed: () {},
              width: 95,
              height: 37,
              icon: Icons.add,
              fontWeight: FontWeight.normal,
              fontSize: 12,
              outlinedColor: Colors.black,
              borderRadius: 20,
            ),
          ),
        ],
      ),
    );
  }
}
