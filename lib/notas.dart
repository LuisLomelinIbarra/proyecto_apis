import 'package:flutter/material.dart';

import 'note.dart';

class Notas {
  static List<Note> lista = [
      Note(
          title: 'Mejorando mi ser',
          date: '17/11/2021',
          color: Colors.indigo,
          content: 'Nota prueba de mejorando mi ser')
    ];
  static List<Note> getNotas() {
    return lista;
  }
  static addNote( Note nt){
    lista.add(nt);
  }
}
