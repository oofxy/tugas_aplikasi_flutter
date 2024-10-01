import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/bindings/binding.dart';
import 'package:tugas_aplikasi_musik/controller/library_controller.dart';
import 'package:tugas_aplikasi_musik/dashboard.dart';
import 'package:tugas_aplikasi_musik/login.dart';
import 'menus/library_menu/library_artist.dart';
import 'menus/library_menu/library_music.dart';

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
        GetPage(name: '/', page: () => Login()),
        GetPage(name: '/dashboard', page: () => Dashboard()),
        GetPage(name: '/LibraryArtist', page: () => LibraryArtist()),
        GetPage(name: '/LibraryMusic', page: () => LibraryMusic()),
      ],
      initialBinding: MyBindings(),
    );
  }
}
