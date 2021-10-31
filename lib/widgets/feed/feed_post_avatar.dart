import 'package:flutter/material.dart';

class FeedPostAvatar extends StatelessWidget {
  FeedPostAvatar({Key? key, required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(color: Colors.black45, offset: Offset(0, 2), blurRadius: 6.0)
      ]),
      child: CircleAvatar(
        child: ClipOval(
          child: Image(
            height: 50.0,
            width: 50.0,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
