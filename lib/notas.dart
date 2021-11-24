import 'package:flutter/material.dart';

import 'note.dart';

class Notas {
  static List<Note> getNotas() {
    return [
      Note(
          title: 'Mejorando mi ser',
          date: '17/11/2021',
          color: Colors.indigo,
          content: 'Nota prueba de mejorando mi ser')
    ];
  }
}
