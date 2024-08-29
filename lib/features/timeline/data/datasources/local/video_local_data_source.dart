import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:ulearna_app/core/core.dart';

abstract class VideoLocalDataSource {
  Future<void> cacheVideos(String url);
  Future<void> cacheThumbnail(String url);
  Future<FileInfo?> getVideoFromCache(String url);
  Future<FileInfo?> getThumbnailFromCache(String url);
}

@LazySingleton(as: VideoLocalDataSource)
class VideoLocalDataSourceImpl implements VideoLocalDataSource {
  VideoLocalDataSourceImpl()
      : _videoCacheManager = getIt<CacheManager>(
          instanceName: 'video-cache-manager',
        ),
        _thumbnailCacheManager = getIt<CacheManager>(
          instanceName: 'thumbnail-cache-manager',
        );

  final CacheManager _videoCacheManager;
  final CacheManager _thumbnailCacheManager;

  @override
  Future<void> cacheThumbnail(String url) async {
    final fileInfo = await _thumbnailCacheManager.getFileFromCache(url);

    if (fileInfo == null) {
      await _thumbnailCacheManager.downloadFile(url);
    }
  }

  @override
  Future<void> cacheVideos(String url) async {
    final fileInfo = await _videoCacheManager.getFileFromCache(url);

    if (fileInfo == null) {
      await _videoCacheManager.downloadFile(url);
    }
  }

  @override
  Future<FileInfo?> getThumbnailFromCache(String url) =>
      _thumbnailCacheManager.getFileFromCache(url);

  @override
  Future<FileInfo?> getVideoFromCache(String url) =>
      _videoCacheManager.getFileFromCache(url);
}
