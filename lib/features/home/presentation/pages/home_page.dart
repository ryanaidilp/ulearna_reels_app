import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final PagingController<int, VideoData> _pagingCtl;
  late final AnimationController _fadeAnimationCtl;
  late final ValueNotifier<bool> _textCollapseNotifier;

  @override
  void initState() {
    super.initState();
    _pagingCtl = PagingController(
      firstPageKey: 1,
    )..addPageRequestListener(
        (pageKey) => fetchData(page: pageKey),
      );
    _fadeAnimationCtl = AnimationController(
      vsync: this,
      duration: 300.milliseconds,
      reverseDuration: 300.milliseconds,
      value: 1,
    );
    _textCollapseNotifier = ValueNotifier(true);
  }

  void _toggleVideoInfo({
    bool status = true,
  }) {
    if (mounted) {
      if (status) {
        _fadeAnimationCtl.forward();
      } else {
        _fadeAnimationCtl.reverse();
      }
      setState(() {});
    }
  }

  void fetchData({
    int page = 1,
  }) =>
      context.read<VideoCubit>().fetch(
            page: page,
          );

  void _videoListStateListener(BuildContext context, VideoState state) {
    if (state is VideoLoaded) {
      final newItems = state.data;
      final isLastPage =
          (_pagingCtl.value.itemList?.length ?? 0) >= state.data.metaData.total;

      if (isLastPage) {
        _pagingCtl.appendLastPage(newItems.data);
      } else {
        _pagingCtl.appendPage(
          newItems.data,
          state.data.metaData.page + 1,
        );
      }
    }
  }

  @override
  void dispose() {
    _pagingCtl.dispose();
    _fadeAnimationCtl.dispose();
    _textCollapseNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocListener<VideoCubit, VideoState>(
        listener: _videoListStateListener,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            body: PagedPageView(
              pagingController: _pagingCtl,
              onPageChanged: (page) {
                _textCollapseNotifier.value = true;
              },
              scrollDirection: Axis.vertical,
              builderDelegate: PagedChildBuilderDelegate<VideoData>(
                itemBuilder: (context, item, index) => GestureDetector(
                  onLongPress: () {
                    _toggleVideoInfo(status: false);
                  },
                  onLongPressEnd: (details) {
                    _toggleVideoInfo();
                  },
                  child: SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.network(
                          item.thumbCdnUrl,
                          fit: BoxFit.cover,
                        ),
                        ValueListenableBuilder(
                          valueListenable: _textCollapseNotifier,
                          builder: (_, value, __) => AnimatedContainer(
                            duration: 300.milliseconds,
                            height: 1.sh,
                            width: 1.sw,
                            color: value ? Colors.transparent : Colors.black87,
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          bottom: 16,
                          child: AnimatedBuilder(
                            animation: _fadeAnimationCtl,
                            builder: (context, child) => FadeTransition(
                              opacity: _fadeAnimationCtl,
                              child: VideoInfo(
                                item: item,
                                isCollapsed: _textCollapseNotifier,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
