import 'package:flutter/material.dart';

import 'med.dart';

class Meditaciones {
  static List<Meditation> getMeditaciones() {
    return [
      Meditation(
          title: 'Zen',
          date: '11/11/2021',
          color: Colors.teal,
          bpm: 70,
          stars: 5),
      Meditation(
          title: 'Mantra',
          date: '14/11/2021',
          color: Colors.red,
          bpm: 80,
          stars: 4)
    ];
  }
}
