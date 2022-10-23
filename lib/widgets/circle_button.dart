import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({Key? key, required this.icon, required this.iconSize, required this.onPressed}) : super(key: key);
  final IconData icon;
  final double iconSize;
  final Function onPressed;



  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5.0),
    decoration: BoxDecoration(
    color:Colors.grey[200],
    shape: BoxShape.circle,
    ),
    child: IconButton(
    icon: Icon(icon),
    iconSize: iconSize,
    onPressed: () {},
    color: Colors.black,
    ),
    );
  }
}
