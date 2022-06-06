class ChannelInfo {
  final String profilePicUrl;
  final String channelName;
  final String subscribers;
  final int videosCount;
  final String channelDescription;

  ChannelInfo(
      {required this.profilePicUrl,
      required this.channelName,
      required this.subscribers,
      required this.videosCount,
      required this.channelDescription});
}
