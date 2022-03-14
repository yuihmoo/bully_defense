import 'package:flutter/material.dart';

class BoardWriteScreen extends StatelessWidget {
  const BoardWriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('게시글 작성'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: <Widget>[
          TextFormField(
            cursorColor: Theme.of(context).cardColor,
            initialValue: '제목을 입력해주세요.',
            maxLength: 20,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              labelText: '제목',
              labelStyle: TextStyle(
                color: Colors.blueAccent,
              ),
              helperText: '글자 제한',
              suffixIcon: Icon(
                Icons.check_circle,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          TextFormField(
            cursorColor: Theme.of(context).cardColor,
            initialValue: '내용을 입력해주세요',
            maxLength: 200,
            maxLines: 5,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10, 50, 10, 10),
              labelText: '내용',
              labelStyle: TextStyle(
                color: Colors.blueAccent,
              ),
              helperText: '글자 제한',
              suffixIcon: Icon(
                Icons.check_circle,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {},
      ),
    );
  }
}
