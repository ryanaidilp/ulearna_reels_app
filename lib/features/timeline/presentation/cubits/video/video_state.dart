part of 'video_cubit.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = VideoInitial;
  const factory VideoState.loading() = VideoLoading;
  const factory VideoState.failed(Failure failure) = VideoFailed;
  const factory VideoState.loaded(ResponseData<List<VideoData>> data) =
      VideoLoaded;
}
