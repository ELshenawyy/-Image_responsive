import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 70.0, left: 15, bottom: 2),
      child: CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage("assets/photos/Ragner.jpg"),
      ),
    );


  }
}
