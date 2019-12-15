import 'package:flutter/material.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/Modal.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/Page.dart';

class PageList extends StatelessWidget {
  final PageController controller;
  final Function onIndexChange;
  PageList({this.controller, this.onIndexChange});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: PageView.builder(
        itemCount: data.length,
        controller: controller,
        onPageChanged: onIndexChange,
        itemBuilder: (context, index) {
          return Page(data[index]);
        },
      ),
    );
  }
}
