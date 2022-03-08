import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = '사이버 폭력 자가진단 앱';

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: BottomNavigator(),
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
    );
  }
}

class BottomNavigator extends StatelessWidget {
  final List<Widget> _widgetOptions = [
    const Center(child: Text('홈 화면')),
    const Center(child: Text('커뮤니티 화면')),
    const Center(child: Text('자가진단 화면')),
    const Center(child: Text('회원정보 화면')),
    const Center(child: Text('신고/상담 화면')),
  ];

  BottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset('images/icon_bd5.png'),
          leadingWidth: 50,
          title: const Text(
            '사이버 폭력 자가진단 앱',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        bottomNavigationBar: const TabBar(
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          tabs: <Widget>[
            Tab(
                text: '홈',
                iconMargin: EdgeInsets.only(left: 0),
                icon: Icon(Icons.home_outlined)),
            Tab(
                text: '커뮤니티',
                iconMargin: EdgeInsets.only(left: 0),
                icon: Icon(Icons.people)),
            Tab(
                text: '자가진단',
                iconMargin: EdgeInsets.only(left: 0),
                icon: Icon(Icons.visibility)),
            Tab(
                text: '회원정보',
                iconMargin: EdgeInsets.only(left: 0),
                icon: Icon(Icons.person)),
            Tab(
                text: '신고/상담',
                iconMargin: EdgeInsets.only(left: 0),
                icon: Icon(Icons.favorite))
          ],
          indicatorColor: Colors.transparent, // indicator 없애기
          unselectedLabelColor: Colors.black, // 선택되지 않은 tab 색
          labelColor: Colors.blueAccent, // 선택된 tab 의 색
        ),
        body: TabBarView(
          children: _widgetOptions, // 어떤 아이템을 넣어줄 지
        ),
      ),
    );
  }
}
