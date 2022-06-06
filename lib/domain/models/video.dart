class Video {
  final String videoId;
  final String videoTitle;
  final String thumbNail;
  final String duration;
  final int views;
  final DateTime timeAgo;
  final int likes;

  Video(
      {required this.videoId,
      required this.videoTitle,
      required this.thumbNail,
      required this.duration,
      required this.views,
      required this.timeAgo,
      required this.likes});
}
