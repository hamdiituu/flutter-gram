import 'package:flutter/material.dart';

class FeedStoryAvatar extends StatelessWidget {
  FeedStoryAvatar({Key? key, required this.story}) : super(key: key);
  String story;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 60.0,
      height: 60.0,
      decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(color: Colors.black45, offset: Offset(0, 2), blurRadius: 6.0)
      ]),
      child: CircleAvatar(
        child: ClipOval(
          child: Image(
            height: 60.0,
            width: 60.0,
            image: AssetImage(story),
          ),
        ),
      ),
    );
  }
}
