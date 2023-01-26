class Movie {
  final int id;
  final String title;
  final String keyword;
  final String poster;
  final String summary;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        summary = map['summary'],
        like = map['like'];

  @override
  String toString() => "Movie<$title:$keyword>";
}
