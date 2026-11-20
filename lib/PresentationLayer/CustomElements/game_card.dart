import 'package:flutter/material.dart';

class GameCard extends StatefulWidget {
  const GameCard({super.key});

  @override
  State<GameCard> createState() => _GameCardState();
}

// Code Below is AI generated
class _GameCardState extends State<GameCard>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  bool isFront = true;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    animation = Tween<double>(begin: 0, end: 3.14159).animate(controller);
  }

  void flipCard() {
    if (controller.isAnimating) return;

    if (isFront) {
      controller.forward();
    } else {
      controller.reverse();
    }

    isFront = !isFront;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: flipCard,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          double angle = animation.value;

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle),
            child: angle < 1.5708
                ? frontCard()
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(3.14159),
                    child: backCard(),
                  ),
          );
        },
      ),
    );
  }

  Widget frontCard() {
    return Container(
      width: 120,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(child: Icon(Icons.question_mark, size: 50)),
    );
  }

  Widget backCard() {
    return Container(
      width: 120,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(child: Text("Item", style: TextStyle(fontSize: 24))),
    );
  }
}
