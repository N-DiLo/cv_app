class UserModel {
  String fullName;
  String githubLink;
  String slackName;
  String? phone;
  String? objectives;
  String? email;
  String? experience;
  String? organization;
  String? twitter;
  String? year;
  String? skills;
  String? reference;
  String? userImage;
  String? state;
  String? lga;
  String? dob;

  UserModel({
    this.state,
    this.lga,
    this.dob,
    this.userImage,
    this.year,
    this.email,
    this.organization,
    this.experience,
    required this.fullName,
    required this.githubLink,
    this.objectives,
    this.skills,
    this.phone,
    required this.slackName,
    this.twitter,
    this.reference,
  });
}
