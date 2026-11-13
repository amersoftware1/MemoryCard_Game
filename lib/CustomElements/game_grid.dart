import 'package:flutter/material.dart';
import 'game_card.dart';

class GameGrid extends StatelessWidget {
  const GameGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 4 cards per row
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 9, // Total number of cards
      itemBuilder: (context, index) {
        return GameCard();
      },
    );
  }
}
