import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/infrastructure/models/articles/articless.dart';
import 'package:platina/infrastructure/models/posts/posts.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_wrapper.dart';

import '../../../component/date_realiser.dart';
import '../../main/widgets/polygon.dart';

class GovermentSalesWidget extends StatefulWidget {
  final Articless? articlesList;

  const GovermentSalesWidget({
    super.key,
    required this.articlesList,
    // required this.descrition,
  });

  // final String descrition;

  @override
  State<GovermentSalesWidget> createState() => _GovermentSalesWidgettState();
}

class _GovermentSalesWidgettState extends State<GovermentSalesWidget> {
  late BuiltList<PostsResponse?>? posts = widget.articlesList?.results;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return widget.articlesList?.results?.isEmpty == null ||
              (widget.articlesList?.results?.isEmpty ?? true)
          ? const SizedBox()
          : Container(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, bottom: 16.h, top: 5.h),
              width: double.infinity,
              // height: 900.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.h),
                  color: colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            // posts?[0]?.category?.name ??
                            "state_purchases".tr(),
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
                  CachedNetworkImage(
                    imageUrl: getImageFullUrl(posts?[0]?.image),
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
                    // "${widget.articlesList?.results?.first?.title}",
                    posts?[0]?.title ??
                        ", ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)",
                    style: TextStyle(
                        color: colors.darkBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    getDate(posts?[0]?.publish),
                    style: TextStyle(
                        color: colors.lightGreyText,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    color: colors.dividerColor,
                    height: 30,
                    thickness: 1,
                  ),
                  for (int i = 1;
                      i < ((posts?.length ?? 10) > 5 ? 5 : posts?.length ?? 1);
                      i++)
                    SizedBox(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 200.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      posts?[i]?.title ??
                                          "Иқтисодиётимиздаги “саратон”дан қачон қутуламиз?",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                          color: colors.darkBlue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      getDate(posts?[i]?.publish),
                                      style: TextStyle(
                                          color: colors.lightGreyText,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              CachedNetworkImage(
                                imageUrl: getImageFullUrl(posts?[i]?.image),
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  height: 86.h,
                                  width: 129.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.h),
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
                            ],
                          ),
                          i != 4
                              ? Divider(
                                  color: colors.dividerColor,
                                  height: 30,
                                  thickness: 1,
                                )
                              : const SizedBox(),
                        ],
                      ),
                    )
                ],
              ),
            );
    });
  }
}
