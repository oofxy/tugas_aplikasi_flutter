import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/widgets/card_artist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardArtist(
          image:
              "https://images.unsplash.com/photo-1542820229-081e0c12af0b?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          name: "name",
          followers: "followers",
          iconOnPressed: () {},
          btnOnPressed: () {}),
    );
  }
}
