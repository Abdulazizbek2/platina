import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platina/infrastructure/models/articles/articless.dart';
import 'package:platina/presentation/pages/main/widgets/polygon.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_wrapper.dart';

import '../../../../infrastructure/models/posts/posts.dart';
import '../../../component/date_realiser.dart';

class EditorChoice extends StatefulWidget {
  final Articless? articlesList;
  const EditorChoice({super.key, required this.articlesList});

  @override
  State<EditorChoice> createState() => _EditorChoiceState();
}

class _EditorChoiceState extends State<EditorChoice> {
  late BuiltList<PostsResponse?>? posts = widget.articlesList?.results;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return widget.articlesList?.results?.isEmpty == null ||
              (widget.articlesList?.results?.isEmpty ?? true)
          ? SizedBox(
              height: 400.h,
              width: 300.w,
              child: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            )
          : Container(
              padding: EdgeInsets.only(left: 16.w, bottom: 16.h, top: 5.h),
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
                            "editors_choice".tr(),
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
                  //Image
                  SizedBox(
                    height: 291.h,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount:
                          (posts?.length ?? 0) > 10 ? 10 : posts?.length ?? 0,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 300.w,
                          padding: EdgeInsets.only(right: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CachedNetworkImage(
                                imageUrl: getImageFullUrl(posts?[index]?.image),
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  height: 190.h,
                                  margin:
                                      EdgeInsets.only(bottom: 15.h, top: 5.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.h),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: imageProvider,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => Container(
                                  height: 190.h,
                                  margin:
                                      EdgeInsets.only(bottom: 15.h, top: 5.h),
                                  width: 300.w,
                                  child: const CircularProgressIndicator
                                      .adaptive(),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),

                              //headline
                              SizedBox(
                                width: 270.w,
                                child: Text(
                                  posts?[index]?.title ?? "",
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: colors.darkBlue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              //descrioption
                              const Spacer(),
                              Row(
                                children: [
                                  Text(
                                    posts?[index]?.category?.name ?? "Жамият",
                                    style: TextStyle(
                                        color: HexColor.fromHex(
                                            posts?[index]?.category?.color ??
                                                "#FF0000"),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 14.w,
                                  ),
                                  Text(
                                    getDate(posts?[index]?.publish),
                                    style: TextStyle(
                                        color: colors.lightGreyText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
    });
  }
}
