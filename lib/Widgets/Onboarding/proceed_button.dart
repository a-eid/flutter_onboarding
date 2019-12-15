import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  final bool show;
  ProceedButton(this.show);

  @override
  Widget build(BuildContext context) {
    if (!show) return Container();
    return Container(
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
