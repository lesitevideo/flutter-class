class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
  final String text;

  const Photo(
      {required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl,
        required this.text});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      text: json['text'] as String,
    );
  }
}