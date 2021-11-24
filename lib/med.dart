import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meditation {
  String title;
  String date;
  Color color;
  int bpm;
  int stars;

  Meditation(
      {required this.title,
      required this.date,
      required this.color,
      required this.bpm,
      required this.stars});
}
