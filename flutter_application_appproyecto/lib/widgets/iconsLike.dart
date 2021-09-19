import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

Widget iconLike() {
  return LikeButton(
    circleColor: CircleColor(start: Colors.blueGrey, end: Colors.blue),
    likeBuilder: (bool isLiked) {
      return Icon(
        Icons.thumb_up,
        size: 30,
        color: isLiked ? Colors.blue : Colors.grey,
      );
    },
  );
}

Widget iconDown() {
  return LikeButton(
    circleColor: CircleColor(start: Colors.green, end: Colors.greenAccent),
    likeBuilder: (bool isLiked) {
      return Icon(
        Icons.download,
        size: 30,
        color: isLiked ? Colors.green : Colors.grey,
      );
    },
  );
}

Widget iconFavorite() {
  return LikeButton(
    circleColor: CircleColor(start: Colors.red, end: Colors.amberAccent),
    likeBuilder: (bool isLiked) {
      return Icon(
        Icons.favorite,
        size: 30,
        color: isLiked ? Colors.red : Colors.grey,
      );
    },
  );
}
