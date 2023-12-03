// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

LoginModel loginFromJson(String str) =>LoginModel.fromJson(json.decode(str));

// String postToJson(List<LoginModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginModel {
  LoginModel({
    required this.userId,
    required this.partnerId,
    required this.login,
    this.partnerName,
  });

  int userId;
  int partnerId;
  String login;
  String? partnerName;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        userId: json["user_id"],
        partnerId: json["partner_id"],
        partnerName: json["partner_name"],
        login: json["login"],
      );

//
// Map<String, dynamic> toJson() => {
//   "userId": userId,
//   "id": id,
//   "title": title,
//   "body": body,
// };
}
