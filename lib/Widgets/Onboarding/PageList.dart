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
          return AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              var delta;
              var y = 1.0;
              if (controller.position.haveDimensions) {
                delta = controller.page - index;
                y = 1 - delta.abs().clamp(0.0, 1.0);
              }

              return Page(data[index], y);
            },
          );
        },
      ),
    );
  }
}
