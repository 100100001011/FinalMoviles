import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
              child: LikeButton(
            circleColor:
                CircleColor(start: Color(0xFFF44336), end: Color(0xFFF44336)),
            likeBuilder: (bool isLiked) {
              return Icon(
                Icons.favorite,
                size: 30,
                color: isLiked ? Colors.red : Colors.grey,
              );
            },
          )),
        ),
      ),
    );
  }
}
