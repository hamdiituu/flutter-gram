import 'package:flutter/material.dart';
import 'package:flutter_gram/models/post_model.dart';
import 'package:flutter_gram/widgets/feed/feed_post_avatar.dart';

class FeedPost extends StatelessWidget {
  FeedPost({Key? key}) : super(key: key);
  // Post post;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: double.infinity,
      height: 450.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 10.0,
                spreadRadius: 0.0)
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FeedPostAvatar(image: "assets/images/user0.png"),
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "User Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 13.0),
                            ),
                            Text(
                              "Time",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12.0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz, size: 30.0)
                ],
              ),
            ),
            Container(
              height: 300.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/post0.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 20.0,
                        offset: Offset(0, 5))
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.cast,
                                size: 20.0,
                              ),
                            ),
                            Text("2,515",
                                style: TextStyle(fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.chat_bubble_outline,
                                size: 20.0,
                              ),
                            ),
                            Text("350",
                                style: TextStyle(fontWeight: FontWeight.w600))
                          ],
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.bookmark_border,
                    size: 25.0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
