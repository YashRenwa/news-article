import 'package:flutter/material.dart';
import 'package:newpaper_app/news_article.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsArticels(),
    );
  }
}
