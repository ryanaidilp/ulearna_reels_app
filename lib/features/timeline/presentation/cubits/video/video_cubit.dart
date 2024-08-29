import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';
import 'package:ulearna_app/shared/shared.dart';

part 'video_state.dart';
part 'video_cubit.freezed.dart';

class VideoCubit extends Cubit<VideoState> {
  VideoCubit()
      : _usecase = getIt<GetAllVideos>(),
        super(const VideoState.initial());

  final GetAllVideos _usecase;

  Future<void> fetch({
    int page = 1,
  }) async {
    emit(const VideoState.loading());

    final result = await _usecase.call(
      GetAllVideosParam(
        page: page,
      ),
    );

    result.fold(
      (l) => emit(VideoState.failed(l)),
      (r) => emit(VideoState.loaded(r)),
    );
  }
}
