class HomeFeedModel {
  String feedProfilePic;
  String feedProfileName;
  String feedPostTime;
  String feedPostViews;
  String feedPostTitle;
  String? feedPostImage;
  String? feedPostText;
  num feedPostUp = 0;
  num feedPostDown = 0;
  List<String> feedPostComments;
  HomeFeedModel(
      {required this.feedProfilePic,
      required this.feedProfileName,
      required this.feedPostTime,
      required this.feedPostViews,
      required this.feedPostTitle,
      this.feedPostImage,
      this.feedPostText,
      this.feedPostUp = 0,
      this.feedPostDown = 0,
      required this.feedPostComments});
}
