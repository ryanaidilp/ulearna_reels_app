// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoDataModel _$VideoDataModelFromJson(Map<String, dynamic> json) {
  return _VideoDataModel.fromJson(json);
}

/// @nodoc
mixin _$VideoDataModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'cdn_url')
  String get cdnUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumb_cdn_url')
  String get thumbCdnUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userID => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'encode_status')
  String get encodeStatus => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryID => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_views')
  int get totalViews => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes')
  int get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_comments')
  int get totalComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_share')
  int get totalShare => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_wishlist')
  int get totalWishlist => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'byte_added_on')
  DateTime get byteAddedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'byte_updated_on')
  DateTime get byteUpdatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunny_stream_video_id')
  String get bunnyStreamVideoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunny_encoding_status')
  int get bunnyEncodingStatus => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_wished')
  bool get isWished => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_follow')
  bool get isFollow => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this VideoDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoDataModelCopyWith<VideoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDataModelCopyWith<$Res> {
  factory $VideoDataModelCopyWith(
          VideoDataModel value, $Res Function(VideoDataModel) then) =
      _$VideoDataModelCopyWithImpl<$Res, VideoDataModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String url,
      @JsonKey(name: 'cdn_url') String cdnUrl,
      @JsonKey(name: 'thumb_cdn_url') String thumbCdnUrl,
      @JsonKey(name: 'user_id') int userID,
      String status,
      String slug,
      @JsonKey(name: 'encode_status') String encodeStatus,
      int priority,
      @JsonKey(name: 'category_id') int categoryID,
      @JsonKey(name: 'total_views') int totalViews,
      @JsonKey(name: 'total_likes') int totalLikes,
      @JsonKey(name: 'total_comments') int totalComments,
      @JsonKey(name: 'total_share') int totalShare,
      @JsonKey(name: 'total_wishlist') int totalWishlist,
      int duration,
      @JsonKey(name: 'byte_added_on') DateTime byteAddedOn,
      @JsonKey(name: 'byte_updated_on') DateTime byteUpdatedOn,
      @JsonKey(name: 'bunny_stream_video_id') String bunnyStreamVideoId,
      @JsonKey(name: 'bunny_encoding_status') int bunnyEncodingStatus,
      UserModel user,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_wished') bool isWished,
      @JsonKey(name: 'is_follow') bool isFollow,
      String? language,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$VideoDataModelCopyWithImpl<$Res, $Val extends VideoDataModel>
    implements $VideoDataModelCopyWith<$Res> {
  _$VideoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? cdnUrl = null,
    Object? thumbCdnUrl = null,
    Object? userID = null,
    Object? status = null,
    Object? slug = null,
    Object? encodeStatus = null,
    Object? priority = null,
    Object? categoryID = null,
    Object? totalViews = null,
    Object? totalLikes = null,
    Object? totalComments = null,
    Object? totalShare = null,
    Object? totalWishlist = null,
    Object? duration = null,
    Object? byteAddedOn = null,
    Object? byteUpdatedOn = null,
    Object? bunnyStreamVideoId = null,
    Object? bunnyEncodingStatus = null,
    Object? user = null,
    Object? isLiked = null,
    Object? isWished = null,
    Object? isFollow = null,
    Object? language = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      cdnUrl: null == cdnUrl
          ? _value.cdnUrl
          : cdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbCdnUrl: null == thumbCdnUrl
          ? _value.thumbCdnUrl
          : thumbCdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      encodeStatus: null == encodeStatus
          ? _value.encodeStatus
          : encodeStatus // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      categoryID: null == categoryID
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      totalComments: null == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int,
      totalShare: null == totalShare
          ? _value.totalShare
          : totalShare // ignore: cast_nullable_to_non_nullable
              as int,
      totalWishlist: null == totalWishlist
          ? _value.totalWishlist
          : totalWishlist // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      byteAddedOn: null == byteAddedOn
          ? _value.byteAddedOn
          : byteAddedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      byteUpdatedOn: null == byteUpdatedOn
          ? _value.byteUpdatedOn
          : byteUpdatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bunnyStreamVideoId: null == bunnyStreamVideoId
          ? _value.bunnyStreamVideoId
          : bunnyStreamVideoId // ignore: cast_nullable_to_non_nullable
              as String,
      bunnyEncodingStatus: null == bunnyEncodingStatus
          ? _value.bunnyEncodingStatus
          : bunnyEncodingStatus // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isWished: null == isWished
          ? _value.isWished
          : isWished // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of VideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoDataModelImplCopyWith<$Res>
    implements $VideoDataModelCopyWith<$Res> {
  factory _$$VideoDataModelImplCopyWith(_$VideoDataModelImpl value,
          $Res Function(_$VideoDataModelImpl) then) =
      __$$VideoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String url,
      @JsonKey(name: 'cdn_url') String cdnUrl,
      @JsonKey(name: 'thumb_cdn_url') String thumbCdnUrl,
      @JsonKey(name: 'user_id') int userID,
      String status,
      String slug,
      @JsonKey(name: 'encode_status') String encodeStatus,
      int priority,
      @JsonKey(name: 'category_id') int categoryID,
      @JsonKey(name: 'total_views') int totalViews,
      @JsonKey(name: 'total_likes') int totalLikes,
      @JsonKey(name: 'total_comments') int totalComments,
      @JsonKey(name: 'total_share') int totalShare,
      @JsonKey(name: 'total_wishlist') int totalWishlist,
      int duration,
      @JsonKey(name: 'byte_added_on') DateTime byteAddedOn,
      @JsonKey(name: 'byte_updated_on') DateTime byteUpdatedOn,
      @JsonKey(name: 'bunny_stream_video_id') String bunnyStreamVideoId,
      @JsonKey(name: 'bunny_encoding_status') int bunnyEncodingStatus,
      UserModel user,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_wished') bool isWished,
      @JsonKey(name: 'is_follow') bool isFollow,
      String? language,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$VideoDataModelImplCopyWithImpl<$Res>
    extends _$VideoDataModelCopyWithImpl<$Res, _$VideoDataModelImpl>
    implements _$$VideoDataModelImplCopyWith<$Res> {
  __$$VideoDataModelImplCopyWithImpl(
      _$VideoDataModelImpl _value, $Res Function(_$VideoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? cdnUrl = null,
    Object? thumbCdnUrl = null,
    Object? userID = null,
    Object? status = null,
    Object? slug = null,
    Object? encodeStatus = null,
    Object? priority = null,
    Object? categoryID = null,
    Object? totalViews = null,
    Object? totalLikes = null,
    Object? totalComments = null,
    Object? totalShare = null,
    Object? totalWishlist = null,
    Object? duration = null,
    Object? byteAddedOn = null,
    Object? byteUpdatedOn = null,
    Object? bunnyStreamVideoId = null,
    Object? bunnyEncodingStatus = null,
    Object? user = null,
    Object? isLiked = null,
    Object? isWished = null,
    Object? isFollow = null,
    Object? language = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$VideoDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      cdnUrl: null == cdnUrl
          ? _value.cdnUrl
          : cdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbCdnUrl: null == thumbCdnUrl
          ? _value.thumbCdnUrl
          : thumbCdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      encodeStatus: null == encodeStatus
          ? _value.encodeStatus
          : encodeStatus // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      categoryID: null == categoryID
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      totalComments: null == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int,
      totalShare: null == totalShare
          ? _value.totalShare
          : totalShare // ignore: cast_nullable_to_non_nullable
              as int,
      totalWishlist: null == totalWishlist
          ? _value.totalWishlist
          : totalWishlist // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      byteAddedOn: null == byteAddedOn
          ? _value.byteAddedOn
          : byteAddedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      byteUpdatedOn: null == byteUpdatedOn
          ? _value.byteUpdatedOn
          : byteUpdatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bunnyStreamVideoId: null == bunnyStreamVideoId
          ? _value.bunnyStreamVideoId
          : bunnyStreamVideoId // ignore: cast_nullable_to_non_nullable
              as String,
      bunnyEncodingStatus: null == bunnyEncodingStatus
          ? _value.bunnyEncodingStatus
          : bunnyEncodingStatus // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isWished: null == isWished
          ? _value.isWished
          : isWished // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoDataModelImpl implements _VideoDataModel {
  _$VideoDataModelImpl(
      {required this.id,
      required this.title,
      required this.url,
      @JsonKey(name: 'cdn_url') required this.cdnUrl,
      @JsonKey(name: 'thumb_cdn_url') required this.thumbCdnUrl,
      @JsonKey(name: 'user_id') required this.userID,
      required this.status,
      required this.slug,
      @JsonKey(name: 'encode_status') required this.encodeStatus,
      required this.priority,
      @JsonKey(name: 'category_id') required this.categoryID,
      @JsonKey(name: 'total_views') required this.totalViews,
      @JsonKey(name: 'total_likes') required this.totalLikes,
      @JsonKey(name: 'total_comments') required this.totalComments,
      @JsonKey(name: 'total_share') required this.totalShare,
      @JsonKey(name: 'total_wishlist') required this.totalWishlist,
      required this.duration,
      @JsonKey(name: 'byte_added_on') required this.byteAddedOn,
      @JsonKey(name: 'byte_updated_on') required this.byteUpdatedOn,
      @JsonKey(name: 'bunny_stream_video_id') required this.bunnyStreamVideoId,
      @JsonKey(name: 'bunny_encoding_status') required this.bunnyEncodingStatus,
      required this.user,
      @JsonKey(name: 'is_liked') required this.isLiked,
      @JsonKey(name: 'is_wished') required this.isWished,
      @JsonKey(name: 'is_follow') required this.isFollow,
      this.language,
      @JsonKey(name: 'deleted_at') this.deletedAt});

  factory _$VideoDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoDataModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String url;
  @override
  @JsonKey(name: 'cdn_url')
  final String cdnUrl;
  @override
  @JsonKey(name: 'thumb_cdn_url')
  final String thumbCdnUrl;
  @override
  @JsonKey(name: 'user_id')
  final int userID;
  @override
  final String status;
  @override
  final String slug;
  @override
  @JsonKey(name: 'encode_status')
  final String encodeStatus;
  @override
  final int priority;
  @override
  @JsonKey(name: 'category_id')
  final int categoryID;
  @override
  @JsonKey(name: 'total_views')
  final int totalViews;
  @override
  @JsonKey(name: 'total_likes')
  final int totalLikes;
  @override
  @JsonKey(name: 'total_comments')
  final int totalComments;
  @override
  @JsonKey(name: 'total_share')
  final int totalShare;
  @override
  @JsonKey(name: 'total_wishlist')
  final int totalWishlist;
  @override
  final int duration;
  @override
  @JsonKey(name: 'byte_added_on')
  final DateTime byteAddedOn;
  @override
  @JsonKey(name: 'byte_updated_on')
  final DateTime byteUpdatedOn;
  @override
  @JsonKey(name: 'bunny_stream_video_id')
  final String bunnyStreamVideoId;
  @override
  @JsonKey(name: 'bunny_encoding_status')
  final int bunnyEncodingStatus;
  @override
  final UserModel user;
  @override
  @JsonKey(name: 'is_liked')
  final bool isLiked;
  @override
  @JsonKey(name: 'is_wished')
  final bool isWished;
  @override
  @JsonKey(name: 'is_follow')
  final bool isFollow;
  @override
  final String? language;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'VideoDataModel(id: $id, title: $title, url: $url, cdnUrl: $cdnUrl, thumbCdnUrl: $thumbCdnUrl, userID: $userID, status: $status, slug: $slug, encodeStatus: $encodeStatus, priority: $priority, categoryID: $categoryID, totalViews: $totalViews, totalLikes: $totalLikes, totalComments: $totalComments, totalShare: $totalShare, totalWishlist: $totalWishlist, duration: $duration, byteAddedOn: $byteAddedOn, byteUpdatedOn: $byteUpdatedOn, bunnyStreamVideoId: $bunnyStreamVideoId, bunnyEncodingStatus: $bunnyEncodingStatus, user: $user, isLiked: $isLiked, isWished: $isWished, isFollow: $isFollow, language: $language, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.cdnUrl, cdnUrl) || other.cdnUrl == cdnUrl) &&
            (identical(other.thumbCdnUrl, thumbCdnUrl) ||
                other.thumbCdnUrl == thumbCdnUrl) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.encodeStatus, encodeStatus) ||
                other.encodeStatus == encodeStatus) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.categoryID, categoryID) ||
                other.categoryID == categoryID) &&
            (identical(other.totalViews, totalViews) ||
                other.totalViews == totalViews) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.totalComments, totalComments) ||
                other.totalComments == totalComments) &&
            (identical(other.totalShare, totalShare) ||
                other.totalShare == totalShare) &&
            (identical(other.totalWishlist, totalWishlist) ||
                other.totalWishlist == totalWishlist) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.byteAddedOn, byteAddedOn) ||
                other.byteAddedOn == byteAddedOn) &&
            (identical(other.byteUpdatedOn, byteUpdatedOn) ||
                other.byteUpdatedOn == byteUpdatedOn) &&
            (identical(other.bunnyStreamVideoId, bunnyStreamVideoId) ||
                other.bunnyStreamVideoId == bunnyStreamVideoId) &&
            (identical(other.bunnyEncodingStatus, bunnyEncodingStatus) ||
                other.bunnyEncodingStatus == bunnyEncodingStatus) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isWished, isWished) ||
                other.isWished == isWished) &&
            (identical(other.isFollow, isFollow) ||
                other.isFollow == isFollow) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        url,
        cdnUrl,
        thumbCdnUrl,
        userID,
        status,
        slug,
        encodeStatus,
        priority,
        categoryID,
        totalViews,
        totalLikes,
        totalComments,
        totalShare,
        totalWishlist,
        duration,
        byteAddedOn,
        byteUpdatedOn,
        bunnyStreamVideoId,
        bunnyEncodingStatus,
        user,
        isLiked,
        isWished,
        isFollow,
        language,
        deletedAt
      ]);

  /// Create a copy of VideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoDataModelImplCopyWith<_$VideoDataModelImpl> get copyWith =>
      __$$VideoDataModelImplCopyWithImpl<_$VideoDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoDataModelImplToJson(
      this,
    );
  }
}

abstract class _VideoDataModel implements VideoDataModel {
  factory _VideoDataModel(
      {required final int id,
      required final String title,
      required final String url,
      @JsonKey(name: 'cdn_url') required final String cdnUrl,
      @JsonKey(name: 'thumb_cdn_url') required final String thumbCdnUrl,
      @JsonKey(name: 'user_id') required final int userID,
      required final String status,
      required final String slug,
      @JsonKey(name: 'encode_status') required final String encodeStatus,
      required final int priority,
      @JsonKey(name: 'category_id') required final int categoryID,
      @JsonKey(name: 'total_views') required final int totalViews,
      @JsonKey(name: 'total_likes') required final int totalLikes,
      @JsonKey(name: 'total_comments') required final int totalComments,
      @JsonKey(name: 'total_share') required final int totalShare,
      @JsonKey(name: 'total_wishlist') required final int totalWishlist,
      required final int duration,
      @JsonKey(name: 'byte_added_on') required final DateTime byteAddedOn,
      @JsonKey(name: 'byte_updated_on') required final DateTime byteUpdatedOn,
      @JsonKey(name: 'bunny_stream_video_id')
      required final String bunnyStreamVideoId,
      @JsonKey(name: 'bunny_encoding_status')
      required final int bunnyEncodingStatus,
      required final UserModel user,
      @JsonKey(name: 'is_liked') required final bool isLiked,
      @JsonKey(name: 'is_wished') required final bool isWished,
      @JsonKey(name: 'is_follow') required final bool isFollow,
      final String? language,
      @JsonKey(name: 'deleted_at')
      final DateTime? deletedAt}) = _$VideoDataModelImpl;

  factory _VideoDataModel.fromJson(Map<String, dynamic> json) =
      _$VideoDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(name: 'cdn_url')
  String get cdnUrl;
  @override
  @JsonKey(name: 'thumb_cdn_url')
  String get thumbCdnUrl;
  @override
  @JsonKey(name: 'user_id')
  int get userID;
  @override
  String get status;
  @override
  String get slug;
  @override
  @JsonKey(name: 'encode_status')
  String get encodeStatus;
  @override
  int get priority;
  @override
  @JsonKey(name: 'category_id')
  int get categoryID;
  @override
  @JsonKey(name: 'total_views')
  int get totalViews;
  @override
  @JsonKey(name: 'total_likes')
  int get totalLikes;
  @override
  @JsonKey(name: 'total_comments')
  int get totalComments;
  @override
  @JsonKey(name: 'total_share')
  int get totalShare;
  @override
  @JsonKey(name: 'total_wishlist')
  int get totalWishlist;
  @override
  int get duration;
  @override
  @JsonKey(name: 'byte_added_on')
  DateTime get byteAddedOn;
  @override
  @JsonKey(name: 'byte_updated_on')
  DateTime get byteUpdatedOn;
  @override
  @JsonKey(name: 'bunny_stream_video_id')
  String get bunnyStreamVideoId;
  @override
  @JsonKey(name: 'bunny_encoding_status')
  int get bunnyEncodingStatus;
  @override
  UserModel get user;
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  @JsonKey(name: 'is_wished')
  bool get isWished;
  @override
  @JsonKey(name: 'is_follow')
  bool get isFollow;
  @override
  String? get language;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;

  /// Create a copy of VideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoDataModelImplCopyWith<_$VideoDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
