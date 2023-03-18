class Questions {
  final String question;
  final String answer;
  bool expanded;

  Questions({
    required this.question,
    required this.answer,
    this.expanded = false,
  });
}
