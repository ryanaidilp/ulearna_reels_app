import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/presentation/widgets/thumbnail_video.dart';

import 'package:video_player/video_player.dart';

class VideoDataPlayer extends StatefulWidget {
  const VideoDataPlayer({
    required this.reelUrl,
    required this.thumbnailUrl,
    required this.onLongPress,
    required this.onLongPressRelease,
    super.key,
  });
  final String reelUrl;
  final String thumbnailUrl;

  final void Function() onLongPress;
  final void Function(LongPressEndDetails details) onLongPressRelease;

  @override
  State<VideoDataPlayer> createState() => _VideoDataPlayerState();
}

class _VideoDataPlayerState extends State<VideoDataPlayer>
    with WidgetsBindingObserver {
  late VideoPlayerController _controller;
  late final CacheManager _videoCacheManager;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _videoCacheManager =
        getIt<CacheManager>(instanceName: 'video-cache-manager');
    initializeController();
  }

  bool _videoInitialized = false;

  Future<void> initializeController() async {
    var fileInfo = await _videoCacheManager.getFileFromCache(widget.reelUrl);
    // ignore: prefer_conditional_assignment
    if (fileInfo == null) {
      fileInfo = await _videoCacheManager.downloadFile(widget.reelUrl);
    }
    if (mounted) {
      _controller = VideoPlayerController.file(
        fileInfo.file,
        videoPlayerOptions: VideoPlayerOptions(),
      )
        // ignore: unawaited_futures
        ..initialize().then((_) {
          setState(() {
            _controller
              ..setLooping(true) // Set video to loop
              ..play();
            _videoInitialized = true;
          });
        });
      _controller.addListener(() {
        if (_controller.value.isPlaying && !_isPlaying) {
          // Video has started playing
          setState(() {
            _isPlaying = true;
          });
        }
      });
    }
  }

  bool _isPlaying = false;
  bool _isMuted = false;
  bool _showVolumeStatus = false;

  Future<void> _toggleVolumeStatus() async {
    setState(() {
      _showVolumeStatus = true;
    });
    await Future<void>.delayed(1000.milliseconds);
    setState(() {
      _showVolumeStatus = false;
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // App is in the foreground
      _controller.play();
    } else if (state == AppLifecycleState.inactive) {
      // App is partially obscured
      _controller.pause();
    } else if (state == AppLifecycleState.paused) {
      // App is in the background
      _controller.pause();
    } else if (state == AppLifecycleState.detached) {
      // App is terminated
      _controller.dispose();
    }
  }

  @override
  void dispose() {
    if (mounted) {
      _controller.dispose();
    } // Dispose of the controller when done
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: GestureDetector(
        onLongPress: () {
          widget.onLongPress.call();
          if (_controller.value.isPlaying) {
            _controller.pause();
            _isPlaying = false;
          }
        },
        onLongPressEnd: (_) {
          widget.onLongPressRelease.call(_);
          if (!_controller.value.isPlaying) {
            _controller.play();
            _isPlaying = true;
          }
        },
        onTap: () {
          if (_videoInitialized) {
            setState(() {
              if (_controller.value.volume > 0) {
                _controller.setVolume(0);
                _isMuted = true;
                _toggleVolumeStatus();
              } else {
                _controller.setVolume(100);
                _isMuted = false;
                _toggleVolumeStatus();
              }
            });
          }
        },
        child: Stack(
          children: [
            if (!_videoInitialized)
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.pink,
                ),
              )
            else
              Center(
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(
                    _controller,
                  ),
                ),
              ),
            if (!_isPlaying)
              Center(
                child: Icon(
                  Icons.pause,
                  size: 50.sp,
                  color: Colors.white,
                ),
              ),
            if (_showVolumeStatus)
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8.r),
                  child: Icon(
                    _isMuted
                        ? CupertinoIcons.speaker_slash
                        : CupertinoIcons.speaker,
                    size: 32.sp,
                    color: Colors.black54,
                  ),
                ),
              ),
            if (!_videoInitialized) ...[
              Align(
                child: ThumbnailVideo(
                  url: widget.thumbnailUrl,
                ),
              ),
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.pink,
                ),
              ),
            ] else
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: VideoProgressIndicator(
                  _controller,
                  allowScrubbing: true,
                  colors: const VideoProgressColors(
                    playedColor: Colors.white60,
                    bufferedColor: Colors.grey,
                    backgroundColor: Colors.white12,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
