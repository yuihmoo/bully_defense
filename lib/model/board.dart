import 'package:flutter/material.dart';

class Board {
  int boardNum;
  String id;
  String title;
  String content;
  bool like;
  int likeCounts;
  DateTime writeDate;
  DateTime modifyDate;

  Board(this.boardNum, this.id, this.title, this.content, this.like,
      this.likeCounts, this.writeDate, this.modifyDate);

  Board.fromMap(Map<String, dynamic> map)
      : boardNum = map['boardNum'],
        id = map['id'],
        title = map['title'],
        content = map['content'],
        like = map['like'],
        likeCounts = map['likeCounts'],
        writeDate = map['writeDate'],
        modifyDate = map['modifyDate'];

  @override
  String toString() => "Board<$id:$title>";
}
