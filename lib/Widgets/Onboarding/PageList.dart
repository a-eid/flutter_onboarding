import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/Page.dart';

class PageList extends StatelessWidget {
  final PageController controller;
  final Function onIndexChange;
  PageList({this.controller, this.onIndexChange});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: pageList.length,
        controller: controller,
        onPageChanged: onIndexChange,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red[100 + index * 100],
          );
        },
      ),
    );
  }
}
