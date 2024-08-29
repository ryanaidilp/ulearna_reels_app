// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'user_id') required int userID,
    required String fullname,
    required String username,
    @JsonKey(name: 'profile_picture_cdn')  String? profilePicture,
     String? designation,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  User toEntity() => User(
        userID: userID,
        fullName: fullname,
        username: username,
        profilePicture: profilePicture,
        designation: designation,
      );
}
