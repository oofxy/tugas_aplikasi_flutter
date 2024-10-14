import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/song_colors.dart';
import 'package:tugas_aplikasi_musik/models/song_model.dart';

class SongData {
  List<ModelSong> songData = [
    ModelSong(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaQ4CFPWIuT3OCL82DVeIKvTvwMK_jnS3Xjg&s",
        "光の中へ",
        "結束バンド",
        SongColors().songColours[0]),
    ModelSong(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUt4DxV0Z7EykuxMA7psUSKkItn6nn62je-Q&s",
        "Moody Wind",
        "Anthony Lazaro",
        SongColors().songColours[1]),
    ModelSong(
        "https://i.scdn.co/image/ab67616d0000b273c57ca033709146845d0ffa8f",
        "Playing God",
        "polyphia",
        SongColors().songColours[2]),
    ModelSong(
        "https://i.scdn.co/image/ab67616d00001e02472fbc1d5743c7d3c75b9ec0",
        "Just The Two of Us",
        "Grover Washington, Jr., Bill Withers",
        SongColors().songColours[3]),
    ModelSong(
        "https://imgs.ototoy.jp/imgs/jacket/0990/00000003.1633932339.8713_320.jpg",
        "終点の先が在るとするならば",
        "ツユ",
        SongColors().songColours[4]),
    ModelSong(
        "https://images.unsplash.com/photo-1508081883599-a58656e0ac48?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjJ8fGphenp8ZW58MHx8MHx8fDA%3D",
        "Sympathique",
        "Pomplamoose, John Shroeder",
        SongColors().songColours[5]),
    ModelSong(
        "https://pbs.twimg.com/profile_images/1535834121335078912/Mq8-BIf4_400x400.jpg",
        "Les Champs-Elysees",
        "Pomplamoose, John Shroeder",
        SongColors().songColours[6]),
    ModelSong(
        "https://i.pinimg.com/736x/90/b9/b8/90b9b8a55d92924d9d39428686550f3a.jpg",
        "9mm",
        "Akon",
        SongColors().songColours[7]),
    ModelSong(
        "https://i.pinimg.com/236x/4a/f9/d5/4af9d54661c2affb0e298c349ed9bd60.jpg",
        "Rapture",
        "INTERWORLD",
        SongColors().songColours[8]),
    ModelSong(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUt4DxV0Z7EykuxMA7psUSKkItn6nn62je-Q&s",
        "Fluxxwave",
        "Clovis Reyes",
        SongColors().songColours[0]),
    ModelSong(
        "https://i.scdn.co/image/ab67616d0000b273bbaf9de6c418a0aa6cb7b938",
        "Goth",
        "Sidewalks and Skeleton",
        SongColors().songColours[1]),
    ModelSong(
        "https://images.unsplash.com/photo-1513883049090-d0b7439799bf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGlhbm98ZW58MHx8MHx8fDA%3D",
        "C'est si bon",
        "Aoi Teshima",
        SongColors().songColours[2]),
    ModelSong(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuefZKIG25oxTCQFAMO8lhxsoG5ITpNxoawg&s",
        "AURA",
        "Ogryzak",
        SongColors().songColours[3]),
    ModelSong(
        "https://i.scdn.co/image/ab67616d00001e02472fbc1d5743c7d3c75b9ec0",
        "Just The Two of Us",
        "Grover Washington, Jr., Bill Withers",
        SongColors().songColours[4]),
    ModelSong(
        "https://images.unsplash.com/photo-1517607487181-36e27b544708?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHBpYW5vfGVufDB8fDB8fHww",
        "Clair De Lune",
        "Claude Debussy",
        SongColors().songColours[5]),
    ModelSong(
        "https://images.unsplash.com/photo-1508081883599-a58656e0ac48?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjJ8fGphenp8ZW58MHx8MHx8fDA%3D",
        "Sympathique",
        "Pomplamoose, John Shroeder",
        SongColors().songColours[6]),
    ModelSong(
        "https://s3-aop.plusmember.jp/prod/public/yorushika/contents/discography/9088008c68f0cc13f0024397770a066a.jpeg",
        "ヒッチコック",
        "ヨルシカ",
        SongColors().songColours[7]),
    ModelSong(
        "https://f4.bcbits.com/img/a1936230053_65",
        "Anybody can find love",
        "hkmori",
        SongColors().songColours[8]),
  ];

  List<ModelSong> songData1 = [
    ModelSong(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaQ4CFPWIuT3OCL82DVeIKvTvwMK_jnS3Xjg&s",
        "光の中へ",
        "結束バンド",
        SongColors().songColours[0]),
    ModelSong(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUt4DxV0Z7EykuxMA7psUSKkItn6nn62je-Q&s",
        "Moody Wind",
        "Anthony Lazaro",
        SongColors().songColours[1]),
    ModelSong(
        "https://i.scdn.co/image/ab67616d0000b273c57ca033709146845d0ffa8f",
        "Playing God",
        "polyphia",
        SongColors().songColours[2]),
    ModelSong(
        "https://i.scdn.co/image/ab67616d00001e02472fbc1d5743c7d3c75b9ec0",
        "Just The Two of Us",
        "Grover Washington, Jr., Bill Withers",
        SongColors().songColours[3]),
    ModelSong(
        "https://imgs.ototoy.jp/imgs/jacket/0990/00000003.1633932339.8713_320.jpg",
        "終点の先が在るとするならば",
        "ツユ",
        SongColors().songColours[4]),
    ModelSong(
        "https://images.unsplash.com/photo-1508081883599-a58656e0ac48?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjJ8fGphenp8ZW58MHx8MHx8fDA%3D",
        "Sympathique",
        "Pomplamoose, John Shroeder",
        SongColors().songColours[5]),
    ModelSong(
        "https://pbs.twimg.com/profile_images/1535834121335078912/Mq8-BIf4_400x400.jpg",
        "Les Champs-Elysees",
        "Pomplamoose, John Shroeder",
        SongColors().songColours[6]),
    ModelSong(
        "https://i.pinimg.com/736x/90/b9/b8/90b9b8a55d92924d9d39428686550f3a.jpg",
        "9mm",
        "Akon",
        SongColors().songColours[7]),
    ModelSong(
        "https://i.pinimg.com/236x/4a/f9/d5/4af9d54661c2affb0e298c349ed9bd60.jpg",
        "Rapture",
        "INTERWORLD",
        SongColors().songColours[8]),
  ];

  List<ModelSong> songData2 = [
    ModelSong(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUt4DxV0Z7EykuxMA7psUSKkItn6nn62je-Q&s",
        "Fluxxwave",
        "Clovis Reyes",
      getRandomColor(),),
    ModelSong(
        "https://i.scdn.co/image/ab67616d0000b273bbaf9de6c418a0aa6cb7b938",
        "Goth",
        "Sidewalks and Skeleton",
      getRandomColor(),),
    ModelSong(
        "https://images.unsplash.com/photo-1513883049090-d0b7439799bf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGlhbm98ZW58MHx8MHx8fDA%3D",
        "C'est si bon",
        "Aoi Teshima",
      getRandomColor(),),
    ModelSong(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuefZKIG25oxTCQFAMO8lhxsoG5ITpNxoawg&s",
        "AURA",
        "Ogryzak",
      getRandomColor(),),
    ModelSong(
        "https://i.scdn.co/image/ab67616d00001e02472fbc1d5743c7d3c75b9ec0",
        "Just The Two of Us",
        "Grover Washington, Jr., Bill Withers",
      getRandomColor(),),
    ModelSong(
        "https://images.unsplash.com/photo-1517607487181-36e27b544708?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHBpYW5vfGVufDB8fDB8fHww",
        "Clair De Lune",
        "Claude Debussy",
      getRandomColor(),),
    ModelSong(
        "https://images.unsplash.com/photo-1508081883599-a58656e0ac48?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjJ8fGphenp8ZW58MHx8MHx8fDA%3D",
        "Sympathique",
        "Pomplamoose, John Shroeder",
      getRandomColor(),),
    ModelSong(
        "https://s3-aop.plusmember.jp/prod/public/yorushika/contents/discography/9088008c68f0cc13f0024397770a066a.jpeg",
        "ヒッチコック",
        "ヨルシカ",
      getRandomColor(),),
    ModelSong(
        "https://f4.bcbits.com/img/a1936230053_65",
        "Anybody can find love",
        "hkmori",
        getRandomColor(),),
  ];
}


Color getRandomColor() {
  Random random = Random();
  return Color.fromARGB(
    255, // Alpha value
    random.nextInt(256), // Red value
    random.nextInt(256), // Green value
    random.nextInt(256), // Blue value
  );
}