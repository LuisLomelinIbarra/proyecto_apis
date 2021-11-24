import 'event.dart';
import 'package:flutter/material.dart';

class Eventos {
  static List<Event> getEventos() {
    return [
      Event(
          title: "Relajacion espiritual",
          date: "21/11/2021",
          hour: "2:00 PM",
          tutor: "Mariana G.",
          place: "La Carreta, ITESM",
          color: Colors.amber,
          imgName: "relajacion-esp"),
      Event(
          title: "Meditaciones en grupo",
          date: "22/11/2021",
          hour: "4:00 PM",
          tutor: "Mariana G.",
          place: "La Carreta, ITESM",
          color: Colors.purple,
          imgName: "meditacion-para-dormir"),
      Event(
          title: "Mindfullness en grupo",
          date: "23/11/2021",
          hour: "4:00 PM",
          tutor: "Mariana G.",
          place: "La Carreta, ITESM",
          color: Colors.orange,
          imgName: "mindfullness")
    ];
  }
}
