import 'package:flutter/material.dart';
import 'button.dart';

class CardArtist extends StatelessWidget {
  final String image;
  final String name;
  final String followers;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final bool isFavorite;

  const CardArtist({
    super.key,
    required this.image,
    required this.name,
    required this.followers,
    required this.onPressed,
    required this.backgroundColor,
    this.isFavorite = false, // Default value
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315,
      width: 385,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  image,
                  height: 200,
                  width: 385,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 200,
                width: 385,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    end: Alignment.bottomCenter,
                    begin: Alignment.center,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(children: [
            ListTile(
              title: Stack(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'AnonymousPro-Bold',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
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
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, top: 65),
              child: MyButton(
                text: isFavorite ? "Unfollow" : "Follow",
                // Update text based on isFavorite
                textColor: isFavorite ? Colors.white : Colors.black,
                backgroundColor: isFavorite ? Colors.black : Colors.white,
                onPressed: onPressed,
                width: 95,
                height: 38,
                icon: Icons.add,
                iconColor: isFavorite ? Colors.white : Colors.black,
                fontWeight: FontWeight.normal,
                outlinedColor: Colors.black,
                borderRadius: 20,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
