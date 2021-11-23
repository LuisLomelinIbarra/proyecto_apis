import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Note {
  String title;
  String date;
  Color color;
  String content;

  Note(
      {required this.title,
      required this.date,
      required this.color,
      required this.content});
}
