// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

LoginModel loginFromJson(Map<String, dynamic> json) =>
    LoginModel.fromJson(json);

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

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      userId: json["uid"],
      partnerId: json["partner_id"]['id'],
      partnerName: json["partner_id"]['name'],
      login: json["login"],
    );
  }
}
