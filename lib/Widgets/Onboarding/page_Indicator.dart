import 'package:flutter/material.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/const.dart';

class PageIndicator extends StatelessWidget {
  final int current;
  final int length;

  PageIndicator({this.current, this.length});

  List<Widget> getChildren() {
    List<Widget> children = [];
    for (int i = 0; i < length; i++) {
      children.add(Indicator(active: i == current));
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getChildren(),
    );
  }
}

class Indicator extends StatelessWidget {
  final bool active;
  Indicator({this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: kIndicatorStyle(active),
        height: 4,
        width: (8 * 7).toDouble(),
        margin: EdgeInsets.only(right: 8),
      ),
    );
  }
}
