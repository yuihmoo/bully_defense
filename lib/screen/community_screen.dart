import 'package:flutter/material.dart';
import 'package:bully_defense/model/board.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<Board> boards = [
    Board.fromMap({
      'id': 'yuihmoo',
      'title': '제목',
      'content': '내용',
      'like': true,
      'likeCounts': 1,
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
        BoardTile(boards[0]),
      ],
    );
  }
}

class BoardTile extends StatelessWidget {
  const BoardTile(this._board, {Key? key}) : super(key: key);

  final Board _board;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.wysiwyg),
      title: Text(_board.title),
      subtitle: Text(_board.likeCounts.toString()),
    );
  }
}