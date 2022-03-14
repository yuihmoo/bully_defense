import 'package:cloud_firestore/cloud_firestore.dart';

class Board {
  int boardNum;
  String id;
  String title;
  String content;
  bool like;
  int likeCounts;
  Timestamp writeDate;
  Timestamp modifyDate;
  DocumentReference reference;

  Board(this.boardNum, this.id, this.title, this.content, this.like,
      this.likeCounts, this.writeDate, this.modifyDate, this.reference);

  Board.fromMap(Map<String, dynamic> map, {required this.reference})
      : boardNum = map['boardNum'],
        id = map['id'],
        title = map['title'],
        content = map['content'],
        like = map['like'],
        likeCounts = map['likeCounts'],
        writeDate = map['writeDate'],
        modifyDate = map['modifyDate'];

  Board.fromSnapshot(DocumentSnapshot snapshot) :
        this.fromMap(snapshot.data(), reference: snapshot.reference);

  @override
  String toString() => "Board<$id:$title>";
}
