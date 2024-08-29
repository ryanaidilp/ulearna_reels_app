import 'package:equatable/equatable.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';

class VideoData extends Equatable {
  const VideoData({
    required this.id,
    required this.title,
    required this.url,
    required this.cdnUrl,
    required this.thumbCdnUrl,
    required this.userId,
    required this.status,
    required this.slug,
    required this.encodeStatus,
    required this.priority,
    required this.categoryId,
    required this.totalViews,
    required this.totalLikes,
    required this.totalComments,
    required this.totalShare,
    required this.totalWishlist,
    required this.duration,
    required this.byteAddedOn,
    required this.byteUpdatedOn,
    required this.bunnyStreamVideoId,
    required this.bunnyEncodingStatus,
    required this.user,
    required this.isLiked,
    required this.isWished,
    required this.isFollow,
    this.language,
    this.deletedAt,
  });
  final int id;
  final String title;
  final String url;
  final String cdnUrl;
  final String thumbCdnUrl;
  final int userId;
  final String status;
  final String slug;
  final String encodeStatus;
  final int priority;
  final int categoryId;
  final int totalViews;
  final int totalLikes;
  final int totalComments;
  final int totalShare;
  final int totalWishlist;
  final int duration;
  final DateTime byteAddedOn;
  final DateTime byteUpdatedOn;
  final String bunnyStreamVideoId;
  final String? language;
  final int bunnyEncodingStatus;
  final DateTime? deletedAt;
  final User user;
  final bool isLiked;
  final bool isWished;
  final bool isFollow;
  @override
  List<Object?> get props => [
        id,
        title,
        url,
        cdnUrl,
        thumbCdnUrl,
        userId,
        status,
        slug,
        encodeStatus,
        priority,
        categoryId,
        totalViews,
        totalLikes,
        totalComments,
        totalShare,
        totalWishlist,
        duration,
        byteAddedOn,
        byteUpdatedOn,
        bunnyStreamVideoId,
        language,
        bunnyEncodingStatus,
        deletedAt,
        user,
        isLiked,
        isWished,
        isFollow,
      ];
}
