import 'package:bully_defense/screen/board_write_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bully_defense/model/board.dart';

import 'board_detail_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  late Stream<QuerySnapshot> streamData;

  @override
  void initState() {
    super.initState();
    streamData = fireStore.collection('board').snapshots();
  }

  Widget _fetchData(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('board').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const LinearProgressIndicator();
        return _buildBody(context, snapshot.data!.docs);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _fetchData(context);
  }

  Widget _buildBody(BuildContext context, List<DocumentSnapshot> snapshot) {
    List<Board> boards = snapshot.map((b) => Board.fromSnapshot(b)).toList();
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
                    builder: (context) =>
                        BoardDetailScreen(board: boards[index])),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BoardWriteScreen()),
          );
        },
      ),
    );
  }
}
