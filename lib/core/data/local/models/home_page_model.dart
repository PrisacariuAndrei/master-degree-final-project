class HomePageAnnouncementModel {
  HomePageAnnouncementModel({
    required this.cardTitle,
    required this.cardDescription,
    this.cardImgPath,
    required this.pageText,
    this.pageImgPath,
  });

  final String cardTitle;
  final String cardDescription;
  final String? cardImgPath;
  final String pageText;
  final String? pageImgPath;
}
