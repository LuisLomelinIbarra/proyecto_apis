import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Event {
  String title;
  String date;
  String hour;
  String tutor;
  String place;
  Color color;
  String imgName;

  Event(
      {required this.title,
      required this.date,
      required this.hour,
      required this.tutor,
      required this.place,
      required this.color,
      required this.imgName});
}
