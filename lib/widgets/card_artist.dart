import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/widgets/button.dart';

class CardArtist extends StatelessWidget {
  final String image;
  final String name;
  final String followers;
  final VoidCallback iconOnPressed;
  final VoidCallback btnOnPressed;

  const CardArtist(
      {super.key,
      required this.image,
      required this.name,
      required this.followers,
      required this.iconOnPressed,
      required this.btnOnPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color().black,
      body: Center(
        child: Container(
          height: 312,
          width: 380,
          decoration: BoxDecoration(
            color: color().lightBrown,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                // Round the top corners
                child: Image.network(
                  image,
                  height: 200,
                  width: 380,
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Stack(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontFamily: 'AnonymousPro-Bold', fontSize: 30),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      child: Text(
                        followers + "K Followers",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'AnonymousPro-Bold',
                        ),
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: iconOnPressed,
                        icon: Icon(
                          Icons.more_horiz,
                          size: 30,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              MyButton(
                text: "Follow",
                textColor: Colors.black,
                backgroundColor: Colors.white,
                onPressed: btnOnPressed,
                width: 75,
                height: 30,
                icon: Icons.add,
                rightMargin: 20,
                fontWeight: FontWeight.normal,
                fontSize: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
