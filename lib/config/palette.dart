import 'package:flutter/material.dart';

class Palette{
  static const Color scaffold = Color(0xFFF0F2F5);

  static const Color blue = Color (0xFF1777F2);

  static const LinearGradient Gradiant= LinearGradient(
      colors: [Color (0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0x0ff4bc1f);

  static const LinearGradient storyGrad= LinearGradient(
    colors: [Colors.transparent, Colors.black26],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}