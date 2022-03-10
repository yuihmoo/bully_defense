class Board {
  String id;
  String title;
  String content;
  bool like;
  int likeCounts;

  Board(this.id, this.title, this.content, this.like, this.likeCounts);

  Board.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        content = map['content'],
        like = map['like'],
        likeCounts = map['likeCounts'];

  @override
  String toString() => "Board<$id:$title>";
}