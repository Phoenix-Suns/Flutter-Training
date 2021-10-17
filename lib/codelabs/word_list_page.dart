import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class WordListPage extends StatefulWidget {
  WordListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WordListPageState createState() => _WordListPageState();
}

class _WordListPageState extends State<WordListPage> {

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

// Step 2: ListView
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          // Dòng lẻ => là Divider
          if (i.isOdd) return Divider();

          // index dòng chẵn = index của _suggestions
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            // Thêm 10 dòng vào list
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(index, _suggestions[index]);
        }
    );
  }

// Step 3: Row of List
  Widget _buildRow(int index, WordPair pair) {
    return ListTile(
      title: Text(
        index.toString() + " - " + pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

// Step 1
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildSuggestions(),
    );
  }
}
