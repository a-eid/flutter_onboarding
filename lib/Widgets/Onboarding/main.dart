import 'package:flutter/material.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/PageList.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/const.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/page_Indicator.dart';
import 'package:flutter_onboarding/Widgets/Onboarding/proceed_button.dart';

import 'package:flutter_onboarding/Widgets/Onboarding/Page.dart' show pageList;

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

    scaleAnimation = Tween(begin: 0.6, end: 1.0).animate(animationController);
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          PageList(controller: controller, onIndexChange: onIndexChange),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  PageIndicator(current: current, length: pageList.length),
                  ProceedButton(current == pageList.length - 1),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
