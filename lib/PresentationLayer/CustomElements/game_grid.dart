import 'package:flutter/material.dart';
import 'game_card.dart';

class GameGrid extends StatelessWidget {
  const GameGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return GameCard();
      },
    );
  }
}
