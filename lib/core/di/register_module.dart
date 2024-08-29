import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:ulearna_app/config/env/env.dart';
import 'package:ulearna_app/core/core.dart';

@module
abstract class RegisterModule {
  Client get httpClient => Client();

  @Named('video-cache-manager')
  CacheManager get videoCacheManager => CacheManager(
        Config(
          'videoCacheKey',
          stalePeriod: 7.days,
          maxNrOfCacheObjects: 100,
          repo: JsonCacheInfoRepository(databaseName: 'videoCacheKey'),
          fileService: HttpFileService(),
        ),
      );

  @Named('thumbnail-cache-manager')
  CacheManager get thumbnailCacheManager => CacheManager(
        Config(
          'thumbnailCacheKey',
          stalePeriod: 7.days,
          maxNrOfCacheObjects: 100,
          repo: JsonCacheInfoRepository(databaseName: 'thumbnailCacheKey'),
          fileService: HttpFileService(),
        ),
      );

  @LazySingleton()
  HttpSetting get httpSetting => HttpSetting(
        baseUrl: Env.apiUrl,
        contentType: 'application/json',
      );
}
