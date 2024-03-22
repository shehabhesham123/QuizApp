class Question {
  final String text;
  final List<String> answars;

  const Question({required this.text, required this.answars});

  List<String> get shuffledAnswars {
    List<String> shuffled = List.of(answars);
    shuffled.shuffle();
    return shuffled;
  }
}
