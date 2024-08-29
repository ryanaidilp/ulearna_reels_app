import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:ulearna_app/core/core.dart';

class ThumbnailVideo extends StatefulWidget {
  const ThumbnailVideo({required this.url, super.key});

  final String url;

  @override
  State<ThumbnailVideo> createState() => _ThumbnailVideoState();
}

class _ThumbnailVideoState extends State<ThumbnailVideo> {
  late final CacheManager _thumbnailCacheManager;
  FileInfo? _fileInfo;
  @override
  void initState() {
    super.initState();
    _thumbnailCacheManager = getIt<CacheManager>(
      instanceName: 'thumbnail-cache-manager',
    );
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _loadCache();
      },
    );
  }

  Future<void> _loadCache() async {
    _fileInfo = await _thumbnailCacheManager.getFileFromCache(widget.url);
    setState(() {});

    // ignore: prefer_conditional_assignment
    if (_fileInfo == null) {
      _fileInfo = await _thumbnailCacheManager.downloadFile(widget.url);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) => Builder(
        builder: (_) {
          if (_fileInfo != null) {
            return Image.file(
              _fileInfo!.file,
              key: ValueKey(widget.url),
              fit: BoxFit.cover,
            );
          }

          return Image.network(
            widget.url,
            key: ValueKey(widget.url),
            fit: BoxFit.cover,
          );
        },
      );
}
