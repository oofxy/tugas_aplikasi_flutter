import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/dashboard.dart';
import 'package:tugas_aplikasi_musik/login.dart';
import 'package:tugas_aplikasi_musik/menus/search_menu.dart';
import 'package:tugas_aplikasi_musik/widgets/card_artist.dart';
import 'package:tugas_aplikasi_musik/widgets/item.dart';
import 'package:tugas_aplikasi_musik/widgets/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/a', page: () => Login()),
        GetPage(name: '/', page: () => SearchMenu()),
        GetPage(name: '/dashboard', page: () => Dashboard())
      ],
    );
  }
}
