import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool _showData = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15.0,
        ),
        GestureDetector(
            onTap: () {
              setState(() => _showData = !_showData);
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, offset: Offset(0.0, 0.3))
                    ]),
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(fontSize: 15.0),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_drop_down,
                            size: 24.0,
                          )
                        ])))),
        _showData
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: ['Informacion a desplegar para la parte de retos ...']
                    .map((e) {
                  return Card(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          e,
                          style: const TextStyle(color: Colors.white),
                        ),
                        tileColor: Colors.grey,
                      )
                    ],
                  ));
                }).toList())
            : const SizedBox()
      ],
    );
  }
}
