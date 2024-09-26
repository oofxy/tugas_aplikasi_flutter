import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/widgets/button.dart';
import 'package:tugas_aplikasi_musik/widgets/percentage_bar.dart';
import 'package:tugas_aplikasi_musik/widgets/percentage_text.dart';
import 'package:tugas_aplikasi_musik/widgets/profile_edit.dart';
import 'package:tugas_aplikasi_musik/widgets/text.dart';
import 'package:get/get.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color().black,
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                child: Image.network(
                  "https://images.unsplash.com/photo-1542452376175-82b6fb643412?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGVyc29ufGVufDB8fDB8fHww",
                  width: 450,
                  height: 335,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 240, left: 40),
                height: 165,
                width: 165,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color().black, // Outline color
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    // Half of height/width for perfect circle
                    child: Image.network(
                      "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww",
                      height: 145,
                      width: 145,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              MyText(
                text: "Song you mostly hear",
                fontSize: 20,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              PercentageText(
                text: "Classical",
                color: Colors.yellow.shade700,
              ),
              PercentageText(
                text: "Pop",
                color: Colors.blue.shade700,
              ),
              PercentageText(
                text: "Rock",
                color: color().red,
              ),
              PercentageText(
                text: "Others",
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            PercentageBar(
              width: 137,
              color: Colors.yellow.shade700,
              topLeft: 20,
              bottomLeft: 20,
            ),
            PercentageBar(width: 90, color: Colors.blue.shade700),
            PercentageBar(width: 103, color: Colors.red.shade700),
            PercentageBar(
              width: 40,
              color: Colors.grey.shade400,
              topRight: 20,
              bottomRight: 20,
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 330,
            width: 370,
            decoration: BoxDecoration(
                color: color().darkRed,
                borderRadius: BorderRadius.circular(22)),
            child: Column(
              children: [
                ProfileEdit(title: "Username", subTitle: "Kevin Zhang"),
                SizedBox(height: 15,),
                ProfileEdit(title: "Email", subTitle: "Kevin@gmail.com"),
            SizedBox(height: 15,),
                ProfileEdit(title: "Password", subTitle: "********"),
    SizedBox(height: 15,),
                Expanded(child: Container()),
                MyButton(
                    text: "Logout",
                    backgroundColor: color().red,
                    onPressed: (){
                      Get.toNamed("/");
                    },
                    width: 85,
                    height: 43,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
                SizedBox(height: 15,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
