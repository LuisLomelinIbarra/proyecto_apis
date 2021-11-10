import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.bgColor = Colors.lightBlue,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    
    style: ElevatedButton.styleFrom(
      primary: bgColor,
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
    child: Text(
      text,
      style: TextStyle(fontSize: 20, color: color),
    ),
    onPressed: onClicked,
    );
  
}