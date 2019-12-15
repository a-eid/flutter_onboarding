import 'package:flutter/material.dart';

List<List<Color>> gradients = [
  [Color(0xFF9708CC), Color(0xFF43CBFF)],
  [Color(0xFFE2859F), Color(0xFFFCCF31)],
  [Color(0xFF5EFCE8), Color(0xFF736EFE)],
];

class Page {
  Page({this.img, this.title, this.body, this.titleGradient});
  var img;
  var title;
  var body;
  List<Color> titleGradient = [];
}

final List<Page> pageList = [
  Page(
    img: "assets/illustration.png",
    title: "MUSIC",
    body: "EXPERIENCE WICKED PLAYLISTS",
    titleGradient: gradients[0],
  ),
  Page(
    img: "assets/illustration2.png",
    title: "SPA",
    body: "FEEL THE MAGIC OF WELLNESS",
    titleGradient: gradients[1],
  ),
  Page(
    img: "assets/illustration3.png",
    title: "TRAVEL",
    body: "LET'S HIKE UP",
    titleGradient: gradients[2],
  ),
];
