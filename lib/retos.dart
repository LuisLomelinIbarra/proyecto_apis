import 'custom_card.dart';
import 'package:flutter/material.dart';

class RetosScreen extends StatelessWidget {
  const RetosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Retos"),
      ),
      body: ListView.builder(
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Column(
                children: [
              'Día 1',
              'Día 2',
              'Día 3',
              'Día 4',
              'Día 5',
              'Día 6',
              'Día 7',
              'Día 8',
              'Día 9',
              'Día 10',
              'Día 11',
              'Día 12',
              'Día 13',
              'Día 14',
              'Día 15',
              'Día 16',
              'Día 17',
              'Día 18',
              'Día 19',
              'Día 20',
              'Día 21',
              'Día 22',
              'Día 23',
              'Día 24',
              'Día 25',
              'Día 26',
              'Día 27',
              'Día 28',
              'Día 29',
              'Día 30'
            ].map((retos) {
              return CardWidget(title: retos);
            }).toList())),
      ),
    );
  }
}
