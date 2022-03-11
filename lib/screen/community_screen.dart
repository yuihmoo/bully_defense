import 'package:flutter/material.dart';
import 'package:bully_defense/model/board.dart';

import 'board_detail_screen.dart';


class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<Board> boards = [
    Board.fromMap({
      'boardNum' : 1,
      'id': 'yuihmoo',
      'title': '공지사항',
      'content': '유용재',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'clean_brain',
      'title': '가입 인사',
      'content': '노상현 주임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'topsjwg',
      'title': '가입 인사드립니다.',
      'content': '정원규 선임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'pjupju',
      'title': '반갑습니다',
      'content': '박진억 책임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'yuihmoo',
      'title': '공지사항',
      'content': '유용재',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'clean_brain',
      'title': '가입 인사',
      'content': '노상현 주임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'topsjwg',
      'title': '가입 인사드립니다.',
      'content': '정원규 선임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'pjupju',
      'title': '반갑습니다',
      'content': '박진억 책임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'yuihmoo',
      'title': '공지사항',
      'content': '유용재',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'clean_brain',
      'title': '가입 인사',
      'content': '노상현 주임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'topsjwg',
      'title': '가입 인사드립니다.',
      'content': '정원규 선임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
    Board.fromMap({
      'boardNum' : 1,
      'id': 'pjupju',
      'title': '반갑습니다',
      'content': '박진억 책임',
      'like': true,
      'likeCounts': 1,
      'writeDate' : DateTime.now(),
      'modifyDate' : DateTime.now(),
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: boards.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset('images/icon_yuihmoo.png'),
            title: Text(boards[index].title),
            subtitle: Text(boards[index].id),
            contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BoardDetailScreen(board: boards[index])
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
      ),
    );
  }
}
