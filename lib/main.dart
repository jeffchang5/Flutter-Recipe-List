import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(RecipeListApp());

class RecipeListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome to Flutter!',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePageWidget(title: 'Recipe List'),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {

  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(wordPair.asPascalCase)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
