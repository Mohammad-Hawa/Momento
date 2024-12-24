class UserModel {
  String name;
  String photo;
  String time;
  String desc;
  String like;
  String share;
  List<String> comments;
  UserModel(
      {required this.name,
      required this.photo,
      required this.time,
      required this.desc,
      required this.like,
      required this.share,
      required this.comments});
}

List<UserModel> users = [
  UserModel(
    name: "Cristiano Ronaldo",
    photo: "assets/photo/png/CR7.png",
    time: "Just now",
    desc:
        "The best football player in the world, known for his incredible skills and records.",
    like: "120M",
    share: "20M",
    comments: ["Best player!", "Always amazing!", "Football legend!"],
  ),
  UserModel(
    name: "Jason Statham",
    photo: "assets/photo/png/Jason Statham.png",
    time: "2 hours ago",
    desc:
        "Famous action movie actor, starred in many action films like Transporter and Fast & Furious.",
    like: "50M",
    share: "5M",
    comments: ["Action king!", "His movies are great!", "Brilliant actor!"],
  ),
  UserModel(
    name: "Rafael Nadal",
    photo: "assets/photo/png/Rafael Nadal.png",
    time: "5 hours ago",
    desc:
        "One of the greatest tennis players in history, known for his strength and determination.",
    like: "30M",
    share: "4M",
    comments: ["Tennis legend!", "Amazing player!", "Impressive on the court!"],
  ),
  UserModel(
    name: "Muhammad Ali",
    photo: "assets/photo/png/mohammad_ali.png",
    time: "Yesterday",
    desc:
        "Boxing legend, a symbol of strength and perseverance both in and out of the ring.",
    like: "100M",
    share: "15M",
    comments: ["The greatest boxer!", "A great man!", "Truly inspiring!"],
  ),
  UserModel(
    name: "Andrew Tate",
    photo: "assets/photo/png/Andrew Tate.jpg",
    time: "3 days ago",
    desc:
        "Entrepreneur and motivational speaker, famous for his strong opinions.",
    like: "20M",
    share: "3M",
    comments: ["Smart guy!", "Always controversial!", "Powerful personality!"],
  ),
  // UserModel(
  //   name: "Mike Tyson",
  //   photo: "assets/photo/png/Mike Tyson.png",
  //   time: "1 week ago",
  //   desc:
  //       "One of the greatest boxers in history, known for his tremendous power.",
  //   like: "80M",
  //   share: "10M",
  //   comments: ["Boxing legend!", "Always incredible!", "Strong personality!"],
  // ),
  // UserModel(
  //   name: "Khabib Nurmagomedov",
  //   photo: "assets/photo/png/Khabib-Nurmagomedov-Background-PNG-Image.png",
  //   time: "2 weeks ago",
  //   desc: "Undefeated MMA fighter, a symbol of humility and dedication.",
  //   like: "60M",
  //   share: "8M",
  //   comments: ["Best fighter!", "Truly respectful!", "Great in every way!"],
  // ),
  // UserModel(
  //   name: "Chris Bumstead",
  //   photo: "assets/photo/png/Chris Bumstead.png",
  //   time: "1 month ago",
  //   desc:
  //       "Bodybuilding champion, famous for his incredible physique and passion for the sport.",
  //   like: "40M",
  //   share: "6M",
  //   comments: ["True champion!", "Best in the world!", "So inspiring!"],
  // ),
];
