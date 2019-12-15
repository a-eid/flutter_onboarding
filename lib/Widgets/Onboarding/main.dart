import 'package:flutter/material.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/PageList.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/const.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/page_Indicator.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/proceed_button.dart';

import 'package:flutter_onboarding/Widgets/Onboarding/Modal.dart' show data;

class Onboarding extends StatefulWidget {
  Onboarding({Key key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  PageController controller;
  Animation<double> scaleAnimation;
  AnimationController animationController;
  int current = 0;
  // bool lastPage = false;

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: current,
    );
    animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
  }

  // clean up
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onIndexChange(index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kContainerStyle,
      child: Stack(
        children: <Widget>[
          PageList(onIndexChange: onIndexChange),
          Positioned(
            bottom: 0,
            left: 8,
            right: 8,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  PageIndicator(current: current, length: data.length),
                  ProceedButton(
                    show: current == data.length - 1,
                    scaleAnimation: Tween(begin: 0.6, end: 1.0)
                        .animate(animationController),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
