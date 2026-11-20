import 'dart:math';
import 'card.dart';

class CardManager {
  static List<Card> cards = [];
  static var cardIconList = ["Apple", "Pie", "Medal", "Cat"];

  static void makeCards() {
    for (var icon in cardIconList) {
      cards.add(Card(name: icon));
      cards.add(Card(name: icon));
    }
    cards.shuffle(Random());
  }

  static List<String> cardsAsList() {
    return cards.map((element) => element.name).toList();
  }
}
