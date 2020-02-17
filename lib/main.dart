import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: "Tutorial Statefull Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn English (Dev Khanhnv24h)"),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _words = <WordPair>[]; //khai bao mang trong dart

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //final wordPair = WordPair.random();
    return ListView.builder(itemBuilder: (context, index) {
      if (index >= _words.length) {
        _words.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_words[index]);
    });
  }

  Widget _buildRow(WordPair wordPair) {
    return ListTile(
      title: Text(
        wordPair.asUpperCase,
        style: const TextStyle(fontSize: 18.0),
      ),
    );
  }
}
