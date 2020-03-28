int calculate() {
  return 6 * 7;
}

List<int> lotto() {
  final numbers = List<int>.generate(45, (i) => i + 1);

  // cascase operator ..
  // List<int>.from(numbers).take(6).toList()..sort();
  final lottos = List<int>.from(numbers).take(6).toList();
  lottos.sort();

  return lottos;
}
