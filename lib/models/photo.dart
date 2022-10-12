class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  // factory Photo.fromJson(Map responseJson) {
  //   return Photo(
  //       albumId: responseJson['albumId'],
  //       id: responseJson['id'],
  //       title: responseJson['title'],
  //       url: responseJson['url'],
  //       thumbnailUrl: responseJson['thumbnailUrl']);
  // }
}
