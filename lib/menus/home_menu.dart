import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ログインのページ"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Press to move to another page"),
            ElevatedButton(onPressed: (){
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
