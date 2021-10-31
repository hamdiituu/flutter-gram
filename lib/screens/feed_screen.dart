import 'package:flutter/material.dart';
import 'package:flutter_gram/data/stories_data.dart';
import 'package:flutter_gram/widgets/feed/feed_header.dart';
import 'package:flutter_gram/widgets/feed/feed_post.dart';
import 'package:flutter_gram/widgets/feed/feed_story_avatar.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          FeedHeader(),
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (BuildContext context, int index) {
                  return FeedStoryAvatar(story: stories[index]);
                }),
          ),
          FeedPost(),
          FeedPost()
        ],
      ),
    );
  }
}
