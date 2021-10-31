import 'package:flutter/material.dart';
import 'package:flutter_gram/screens/feed_screen.dart';

void main() => runApp(const FlutterGram());

class FlutterGram extends StatelessWidget {
  const FlutterGram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Gram Project",
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}
