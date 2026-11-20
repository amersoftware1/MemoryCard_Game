import 'card_manager.dart';

class GameManager {
  static void start() {
    if (CardManager.cards.isEmpty) {
      CardManager.makeCards();
    }
  }

  static void endGame() {
    resetCards();
  }

  static void resetCards() {
    if (CardManager.cards.isNotEmpty) {
      CardManager.cards.clear();
    }
  }

  static List<String> cards() {
    return CardManager.cardsAsList();
  }
}
