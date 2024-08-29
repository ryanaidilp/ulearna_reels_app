// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';

part 'video_data_model.freezed.dart';
part 'video_data_model.g.dart';

@freezed
abstract class VideoDataModel with _$VideoDataModel {
  factory VideoDataModel({
    required int id,
    required String title,
    required String url,
    @JsonKey(name: 'cdn_url') required String cdnUrl,
    @JsonKey(name: 'thumb_cdn_url') required String thumbCdnUrl,
    @JsonKey(name: 'user_id') required int userID,
    required String status,
    required String slug,
    @JsonKey(name: 'encode_status') required String encodeStatus,
    required int priority,
    @JsonKey(name: 'category_id') required int categoryID,
    @JsonKey(name: 'total_views') required int totalViews,
    @JsonKey(name: 'total_likes') required int totalLikes,
    @JsonKey(name: 'total_comments') required int totalComments,
    @JsonKey(name: 'total_share') required int totalShare,
    @JsonKey(name: 'total_wishlist') required int totalWishlist,
    required int duration,
    @JsonKey(name: 'byte_added_on') required DateTime byteAddedOn,
    @JsonKey(name: 'byte_updated_on') required DateTime byteUpdatedOn,
    @JsonKey(name: 'bunny_stream_video_id') required String bunnyStreamVideoId,
    @JsonKey(name: 'bunny_encoding_status') required int bunnyEncodingStatus,
    required UserModel user,
    @JsonKey(name: 'is_liked') required bool isLiked,
    @JsonKey(name: 'is_wished') required bool isWished,
    @JsonKey(name: 'is_follow') required bool isFollow,
     String? language,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  }) = _VideoDataModel;
  factory VideoDataModel.fromJson(Map<String, dynamic> json) =>
      _$VideoDataModelFromJson(json);
}

extension VideoDataModelX on VideoDataModel {
  VideoData toEntity() => VideoData(
        id: id,
        title: title,
        url: url,
        cdnUrl: cdnUrl,
        thumbCdnUrl: thumbCdnUrl,
        userId: userID,
        status: status,
        slug: slug,
        encodeStatus: encodeStatus,
        priority: priority,
        categoryId: categoryID,
        totalViews: totalViews,
        totalLikes: totalLikes,
        totalComments: totalComments,
        totalShare: totalShare,
        totalWishlist: totalWishlist,
        duration: duration,
        byteAddedOn: byteAddedOn,
        byteUpdatedOn: byteUpdatedOn,
        bunnyStreamVideoId: bunnyStreamVideoId,
        language: language,
        bunnyEncodingStatus: bunnyEncodingStatus,
        user: user.toEntity(),
        isLiked: isLiked,
        isWished: isWished,
        isFollow: isFollow,
        deletedAt: deletedAt,
      );
}
