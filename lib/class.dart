import 'package:flutter/material.dart';

class Word {
  final String name;
  Word({required this.name});
}

class WordProvider extends ChangeNotifier {
  final List<Word> wordlist = [];

  void add(Word word) {
    wordlist.add(word);
    notifyListeners();
  }

  void reset() {
    wordlist.clear();
    notifyListeners();
  }
}

class TextWWidget extends StatelessWidget {
  final List<Word> textword;

  const TextWWidget({
    super.key,
    required this.textword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: textword.map((textword) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue,
            child: Text(
              textword.name,
            ),
          ),
        );
      }).toList(),
    );
  }
}
