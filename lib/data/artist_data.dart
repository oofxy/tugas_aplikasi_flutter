import 'package:tugas_aplikasi_musik/colors/arttist_card_colors.dart';
import 'package:tugas_aplikasi_musik/models/card_artist_model.dart';

class ArtistData {
  static int _counter = 0;

  List<ModelCard> artistData = [
    ModelCard(
        "https://a.storyblok.com/f/178900/960x542/271d20152d/odetari.png/m/filters:quality(95)format(webp)",
        "Odetari",
        "853",
        ArtistCardColors().artistCardColors[0],
        "${_counter++}"),
    ModelCard(
        "https://d3c80vss50ue25.cloudfront.net/media/filer_public_thumbnails/filer_public/87/c0/87c05872-1577-4381-87e6-2d35aefb9ee9/chopin_im_salon_des_fursten_anton_radziwill_im_herbst_1829_in_berlin_gemalde_von_henryk_siemiradzki_1887.jpg__1420x696_q85_crop_subject_location-796%2C459_subsampling-2_upscale.jpg",
        "Frédéric Chopin",
        "582",
        ArtistCardColors().artistCardColors[1],
        "${_counter++}"),
    ModelCard(
        "https://queenonlinestore.com/cdn/shop/files/the_20works.jpg?v=1726048683",
        "Queen",
        "993",
        ArtistCardColors().artistCardColors[2],
        "${_counter++}"),
    ModelCard(
        "https://cdn.prod.website-files.com/61a546bc82b92d612439d8f3/64c030c561bf3deec03847c6_Debussy.jpg",
        "Claude Debussy",
        "375",
        ArtistCardColors().artistCardColors[3],
        "${_counter++}"),
    ModelCard(
        "https://salvemusic.com.ua/wp-content/uploads/2021/01/niccolo-paganini-3-768x466.jpg",
        "Niccolò Paganini",
        "446",
        ArtistCardColors().artistCardColors[4],
        "${_counter++}"),
    ModelCard(
        "https://i.ytimg.com/vi/0oCnt13S-1g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDqpWGvD_KUTPd3lq-8jLb0RzyOrA",
        "Polyphia",
        "536",
        ArtistCardColors().artistCardColors[5],
        "${_counter++}"),
    ModelCard(
        "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/esensi/2023/12/sinatra_wide-e82beae0454312f8aa480f138232ea2be372ba8b-s1400-c100.jpg",
        "Frank Sinatra",
        "854",
        ArtistCardColors().artistCardColors[0],
        "${_counter++}",),
    ModelCard(
        "https://kai-you.net/images/a/2023/02/c3cc00afb5ec7a5b31a4a203a6ced99a.jpeg",
        "結束バンド",
        "346",
        ArtistCardColors().artistCardColors[1],
        "${_counter++}"),
    ModelCard("https://img.youtube.com/vi/4tT0j_-42Ac/maxresdefault.jpg",
        "ツユ",
        "346",
        ArtistCardColors().artistCardColors[2],
        "${_counter++}"),
    ModelCard(
        "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/esensi/2023/11/rollingstone.jpg",
        "The Rolling Stones",
        "946",
        ArtistCardColors().artistCardColors[3],
        "${_counter++}"),
    ModelCard(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRya4RuBr_7Iz9hIwfL5izb2U8cSg9wxfnv9w&s",
        "The Weeknd",
        "735",
        ArtistCardColors().artistCardColors[4],
        "${_counter++}"),
    ModelCard(
        "https://preview.redd.it/any-news-regarding-that-sick-hack-song-in-episode-10-o-v0-zmu8a8ai3a8a1.jpg?width=2048&format=pjpg&auto=webp&s=913441456ce40a842e3b4d046fbc9285821722d5",
        "Sick Hack",
        "263",
        ArtistCardColors().artistCardColors[5],
        "${_counter++}"),
  ];
}
