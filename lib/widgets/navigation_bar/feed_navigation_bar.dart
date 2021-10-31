import 'package:flutter/material.dart';

class FeedNavigationBar extends StatelessWidget {
  const FeedNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.space_dashboard_outlined,
                size: 30.0,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Color(0xFF23B66F),
                onPressed: () => print('Upload photo'),
                child: Icon(
                  Icons.add,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.favorite_border,
                size: 30.0,
                color: Colors.grey,
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30.0,
              color: Colors.grey,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
