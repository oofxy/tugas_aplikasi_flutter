import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/dashboard.dart';
import 'package:tugas_aplikasi_musik/login.dart';
import 'package:tugas_aplikasi_musik/widgets/card_artist.dart';
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
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/a',
            page: () => CardArtist(
                image:
                    "https://images.unsplash.com/photo-1542820229-081e0c12af0b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHJvbWV8ZW58MHx8MHx8fDA%3D",
                name: "name",
                followers: "2342",
                iconOnPressed: (){},
                btnOnPressed: (){})),
        GetPage(name: '/', page: () => Login()),
        GetPage(name: '/dashboard', page: () => Dashboard())
      ],
    );
  }
}
