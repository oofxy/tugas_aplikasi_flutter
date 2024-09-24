import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';

class Item extends StatelessWidget {
  final String image;
  final String name;
  final String artistName;
  final Color sideColor;

  const Item({super.key,
    required this.image,
    required this.name,
    required this.artistName,
    required this.sideColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 408,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: color().black2),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.network(
              image,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: 70,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        fontSize: 17),
                  ),
                  Text(
                    artistName,
                    style: TextStyle(
                        color: Colors.white54,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ]),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white,
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 2),
                  width: 14,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  decoration: BoxDecoration(color: sideColor),
                ),
                Container(
                  width: 8,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: color().black2,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6))),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
