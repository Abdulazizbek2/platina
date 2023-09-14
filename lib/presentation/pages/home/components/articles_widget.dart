import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_wrapper.dart';

import '../../../../infrastructure/models/articles/articless.dart';
import '../../../../infrastructure/models/posts/posts.dart';
import '../../../component/date_realiser.dart';
import '../../main/widgets/polygon.dart';

class ArticlesWidget extends StatefulWidget {
  final Articless? articlesList;
  const ArticlesWidget({super.key, required this.articlesList});

  @override
  State<ArticlesWidget> createState() => _ArticlesWidgetState();
}

class _ArticlesWidgetState extends State<ArticlesWidget> {
  late BuiltList<PostsResponse?>? posts = widget.articlesList?.results;
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return widget.articlesList?.results?.isEmpty == null ||
              (widget.articlesList?.results?.isEmpty ?? true)
          ? SizedBox()
          : Container(
              padding: EdgeInsets.only(
                  left: 16.w, bottom: 16.h, top: 5.h, right: 16.w),
              width: double.infinity,
              // height: 900.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.h),
                  color: colors.white),
              child: Column(
                children: [
                  //HeadNews
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          PolygonIcon(
                            color: colors.darkBlue,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "articles".tr(),
                            style: TextStyle(
                                color: colors.darkBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: SvgPicture.asset(icons.arrowRight))
                    ],
                  ),

                  for (int i = 0;
                      i < ((posts?.length ?? 10) > 5 ? 5 : posts?.length ?? 0);
                      i++)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Image
                        CachedNetworkImage(
                          imageUrl: getImageFullUrl(posts?[i]?.imageLarge),
                          imageBuilder: (context, imageProvider) => Container(
                            height: 240.h,
                            width: double.infinity.w,
                            margin: EdgeInsets.only(bottom: 15.h, top: 5.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.h),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: imageProvider,
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const CircularProgressIndicator.adaptive(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                        //headline
                        Text(
                          posts?[i]?.title ?? "Бухорода йўқ қилинган ҳаётлар",
                          style: TextStyle(
                              color: colors.darkBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        i !=
                                ((posts?.length ?? 10) > 5
                                        ? 5
                                        : posts?.length ?? 0) -
                                    1
                            ? Divider(
                                color: colors.dividerColor,
                                height: 30,
                                thickness: 1,
                              )
                            : const SizedBox(),
                      ],
                    ),
                ],
              ),
            );
    });
  }
}
