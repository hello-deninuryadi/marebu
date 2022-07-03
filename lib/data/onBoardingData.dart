class DataOnboarding {
  String title;
  String desc;
  String image;

  DataOnboarding(
      {required this.title, required this.desc, required this.image});
}

var listDataOnboarding = [
  DataOnboarding(
      title: "Feel free to\nexplore",
      desc:
          "You can move everywhere while not\nhaving to consider parking problems, so\ngoing everywhere is easy",
      image: "asset/image/Splash_1.png"),
  DataOnboarding(
      title: "Find a parking\nspace",
      desc:
          "Don`t hesitate to head anywhere, we are\nable to inform you the closest parking\nplace at",
      image: "asset/image/Splash_2.png"),
  DataOnboarding(
      title: "Book a parking\narea easily",
      desc: "Book a parking space quickly and easily",
      image: "asset/image/Splash_3.png"),
];
