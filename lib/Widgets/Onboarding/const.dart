import 'package:flutter/material.dart';

const kContainerStyle = BoxDecoration(
  gradient: LinearGradient(
    colors: [Color(0xFF485563), Color(0xFF29323C)],
    tileMode: TileMode.clamp,
    begin: Alignment.topCenter,
    stops: [0.0, 1.0],
    end: Alignment.bottomCenter,
  ),
);

BoxDecoration kIndicatorStyle(active) {
  return BoxDecoration(
    color: active ? Colors.blue : Colors.red,
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0.0, 4.0),
        blurRadius: 2.0,
      )
    ],
  );
}
