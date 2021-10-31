import 'package:flutter/material.dart';

class FeedHeader extends StatelessWidget {
  const FeedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "flutter-gram",
            style: TextStyle(fontFamily: 'Billabong', fontSize: 32.0),
          ),
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  debugPrint("live tv onpress");
                },
                icon: const Icon(Icons.live_tv),
                iconSize: 25.0,
              ),
              IconButton(
                onPressed: () {
                  debugPrint("messages button click");
                },
                icon: const Icon(Icons.send),
                iconSize: 25.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
