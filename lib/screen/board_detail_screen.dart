import 'package:flutter/material.dart';
import '../model/board.dart';

class BoardDetailScreen extends StatelessWidget {
  final Board board;

  const BoardDetailScreen({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(board.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(board.content),
      ),
    );
  }
}