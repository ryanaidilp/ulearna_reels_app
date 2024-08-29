// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i447;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:ulearna_app/core/core.dart' as _i455;
import 'package:ulearna_app/core/di/register_module.dart' as _i432;
import 'package:ulearna_app/core/network/http/modules/ulearna_video_http_module.dart'
    as _i450;
import 'package:ulearna_app/features/timeline/data/datasources/remote/video_remote_data_source.dart'
    as _i555;
import 'package:ulearna_app/features/timeline/data/repositories/video_repository_impl.dart'
    as _i410;
import 'package:ulearna_app/features/timeline/domain/usecases/get_all_videos.dart'
    as _i521;
import 'package:ulearna_app/features/timeline/timeline.dart' as _i54;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i519.Client>(() => registerModule.httpClient);
  gh.lazySingleton<_i455.HttpSetting>(() => registerModule.httpSetting);
  gh.lazySingleton<_i521.GetAllVideos>(() => _i521.GetAllVideos());
  gh.lazySingleton<_i555.VideoRemoteDataSource>(
      () => _i555.VideoRemoteDataSourceImpl());
  gh.lazySingleton<_i54.VideoRepository>(() => _i410.VideoRepositoryImpl());
  gh.factory<_i447.CacheManager>(
    () => registerModule.thumbnailCacheManager,
    instanceName: 'thumbnail-cache-manager',
  );
  gh.factory<_i447.CacheManager>(
    () => registerModule.videoCacheManager,
    instanceName: 'video-cache-manager',
  );
  gh.lazySingleton<_i450.UlearnaVideoHttpModule>(
      () => _i450.UlearnaVideoHttpModule(
            gh<_i519.Client>(),
            setting: gh<_i455.HttpSetting>(),
          ));
  return getIt;
}

class _$RegisterModule extends _i432.RegisterModule {}
