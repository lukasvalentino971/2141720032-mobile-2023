import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.redAccent,
    Colors.indigo,
    Colors.yellow,
    Colors.limeAccent,
    Colors.orange,
  ];

  Stream<Color> getColors() async* {
    await for (int t
        in Stream.periodic(const Duration(seconds: 1), (int i) => i)) {
      int index = t % colors.length;
      yield colors[index];
    }
  }
}
