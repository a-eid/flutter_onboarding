import 'package:flutter/material.dart';

import 'Modal.dart';

class Page extends StatelessWidget {
  final PageModal page;
  final double y;
  Page(this.page, this.y);

  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: 1,
        widthFactor: 1,
        child: Transform(
          transform: Matrix4.translationValues(0, 50.0 * (1 - y), 0),
          child: Image.asset(page.img),
        ) //,
        );
  }
}
