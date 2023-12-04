// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

import 'package:yoe_yoe_lay/global/common/session.dart';

ProfileModel profileFromJson(Map<String, dynamic> json) =>
    ProfileModel.fromJson(json);

class ProfileModel {
  ProfileModel(
      {required this.partnerId,
      this.partnerName,
      required this.login,
      required this.avatarUrl});

  int partnerId;
  String login;
  String avatarUrl;
  String? partnerName;
  String? sessionId;

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      partnerId: json["partner_id"]['id'],
      partnerName: json["partner_id"]['name'],
      avatarUrl: json["partner_id"]['avatar_128'],
      login: json["login"],
    );
  }
}
