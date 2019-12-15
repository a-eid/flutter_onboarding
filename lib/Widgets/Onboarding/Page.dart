import 'package:flutter/material.dart';

import 'Modal.dart';

class Page extends StatelessWidget {
  final PageModal page;
  Page(this.page);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(page.body),
    );
  }
}
