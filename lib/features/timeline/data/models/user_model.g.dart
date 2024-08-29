// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userID: (json['user_id'] as num).toInt(),
      fullname: json['fullname'] as String,
      username: json['username'] as String,
      profilePicture: json['profile_picture_cdn'] as String?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userID,
      'fullname': instance.fullname,
      'username': instance.username,
      'profile_picture_cdn': instance.profilePicture,
      'designation': instance.designation,
    };
