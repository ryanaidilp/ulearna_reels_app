import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';
import 'package:ulearna_app/i10n/translations/translations.g.dart';

class VideoInfo extends StatelessWidget {
  const VideoInfo({
    required this.item,
    required this.isCollapsed,
    super.key,
  });

  final VideoData item;
  final ValueNotifier<bool> isCollapsed;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        item.thumbCdnUrl,
                      ),
                    ),
                    8.horizontalSpace,
                    Text(
                      item.user.username,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    8.horizontalSpace,
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(4.r),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 2,
                        ),
                        child: Text(
                          item.isFollow
                              ? context.l10n.general.following
                              : context.l10n.general.follow,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                8.verticalSpace,
                ReadMoreText(
                  item.title,
                  trimMode: TrimMode.Line,
                  isCollapsed: isCollapsed,
                  locale: LocaleSettings.currentLocale.flutterLocale,
                  annotations: [
                    Annotation(
                      regExp: RegExp('#([a-zA-Z0-9_]+)'),
                      spanBuilder: ({
                        required String text,
                        TextStyle? textStyle,
                      }) =>
                          TextSpan(
                        text: text,
                        style: textStyle?.copyWith(color: Colors.blue),
                      ),
                    ),
                    Annotation(
                      regExp: RegExp(r'<@(\d+)>'),
                      spanBuilder: ({
                        required String text,
                        TextStyle? textStyle,
                      }) =>
                          TextSpan(
                        text: text,
                        style: textStyle?.copyWith(color: Colors.green),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle tap, e.g., navigate to a user profile
                          },
                      ),
                    ),
                  ],
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          8.horizontalSpace,
          Column(
            children: [
              EngagementInfo(
                icon: Icons.remove_red_eye_sharp,
                value: item.totalViews.formatAmountCompact(),
              ),
              8.verticalSpace,
              EngagementInfo(
                icon: CupertinoIcons.heart,
                value: item.totalLikes.formatAmountCompact(),
              ),
              8.verticalSpace,
              EngagementInfo(
                icon: CupertinoIcons.bubble_right,
                value: item.totalComments.formatAmountCompact(),
              ),
              8.verticalSpace,
              EngagementInfo(
                icon: CupertinoIcons.paperplane,
                value: item.totalShare.formatAmountCompact(),
              ),
              8.verticalSpace,
              EngagementInfo(
                icon: Icons.bookmark_border_rounded,
                value: item.totalWishlist.formatAmountCompact(),
              ),
              8.verticalSpace,
            ],
          ),
        ],
      );
}
