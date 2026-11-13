// ignore_for_file: file_names
import 'package:flutter/material.dart';

class GameCard extends StatefulWidget {
  const GameCard({super.key});

  @override
  CustomButton createState() => CustomButton();
}

class CustomButton extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print("pressed $this");
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Icon(Icons.star, size: 64)),
      ),
    );
  }
}
