import 'package:flutter/material.dart';

List<List<Color>> gradients = [
  [Color(0xFF9708CC), Color(0xFF43CBFF)],
  [Color(0xFFE2859F), Color(0xFFFCCF31)],
  [Color(0xFF5EFCE8), Color(0xFF736EFE)],
];

class PageModal {
  PageModal({this.img, this.title, this.body, this.titleGradient});
  var img;
  var title;
  var body;
  List<Color> titleGradient = [];
}

final List<PageModal> data = [
  PageModal(
    img: "assets/illustration.png",
    title: "MUSIC",
    body: "EXPERIENCE WICKED PLAYLISTS",
    titleGradient: gradients[0],
  ),
  PageModal(
    img: "assets/illustration2.png",
    title: "SPA",
    body: "FEEL THE MAGIC OF WELLNESS",
    titleGradient: gradients[1],
  ),
  PageModal(
    img: "assets/illustration3.png",
    title: "TRAVEL",
    body: "LET'S HIKE UP",
    titleGradient: gradients[2],
  ),
];
