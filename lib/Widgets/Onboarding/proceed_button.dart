import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  final bool show;
  final Animation<double> scaleAnimation;

  ProceedButton({this.show, this.scaleAnimation});

  getButton() {
    if (!show) return Container();
    return FloatingActionButton(
      backgroundColor: Colors.white,
      child: Icon(
        Icons.arrow_forward,
        color: Colors.black,
        size: 35,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: Container(width: 80, height: 80, child: getButton()),
    );
  }
}
