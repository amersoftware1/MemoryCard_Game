class Card {
  String name;
  bool _isFlipped = false;

  Card({required this.name});

  bool isFlipped() {
    return _isFlipped;
  }

  void flip() {
    _isFlipped = true;
  }
}
