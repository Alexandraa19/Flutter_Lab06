import 'dart:math';

class Quote {
  final String text;
  final String author;
  final String imagePath;

  const Quote({
    required this.text,
    required this.author,
    required this.imagePath,
  });
}

const List<Quote> quotes = [
  Quote(
    text: 'Единственный способ делать великие дела — любить то, что вы делаете.',
    author: 'Стив Джобс',
    imagePath: 'assets/images/1.jpg',
  ),
  Quote(
    text: 'Успех — это способность идти от неудачи к неудаче, не теряя энтузиазма.',
    author: 'Уинстон Черчилль',
    imagePath: 'assets/images/2.jpg',
  ),
  Quote(
    text: 'Будущее принадлежит тем, кто верит в красоту своей мечты.',
    author: 'Элеонора Рузвельт',
    imagePath: 'assets/images/3.jpg',
  ),
];

Quote getRandomQuote() {
  final random = Random();
  return quotes[random.nextInt(quotes.length)];
}