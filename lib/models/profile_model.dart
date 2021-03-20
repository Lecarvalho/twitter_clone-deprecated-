class ProfileModel {
  String name;
  String picture;
  String nickname;

  ProfileModel({
    required this.name,
    required this.picture,
    required this.nickname,
  });

  factory ProfileModel.empty() {
    return ProfileModel(name: "", picture: "", nickname: "");
  }
}
