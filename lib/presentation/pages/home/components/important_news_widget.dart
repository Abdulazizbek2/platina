import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_wrapper.dart';

import '../../../../infrastructure/models/articles/articless.dart';
import '../../../../infrastructure/models/posts/posts.dart';
import '../../../component/date_realiser.dart';
import '../../main/widgets/polygon.dart';

class ImportantNewsWidget extends StatefulWidget {
  final Articless? importantnewsList;
  const ImportantNewsWidget({
    super.key,
    required this.importantnewsList,
  });

  @override
  State<ImportantNewsWidget> createState() => _ImportantNewsWidgetState();
}

class _ImportantNewsWidgetState extends State<ImportantNewsWidget> {
  late BuiltList<PostsResponse?>? posts = widget.importantnewsList?.results;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return widget.importantnewsList?.results?.isEmpty == null ||
              (widget.importantnewsList?.results?.isEmpty ?? true)
          ? SizedBox(
              height: 500.h,
              width: 300.w,
              child: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            )
          : Container(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, bottom: 16.h, top: 5.h),
              width: double.infinity,
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
                            "important_news".tr(),
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
                    imageUrl: getImageFullUrl(posts?[0]?.imageLarge),
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
                    posts?[0]?.title ??
                        "Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)",
                    style: TextStyle(
                        color: colors.darkBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  //descrioption
                  Column(
                    children: <Widget>[
                      Text(
                        flag
                            ? parseHtmlString(posts?[0]?.shortDescription ?? "")
                                    ?.trim() ??
                                ""
                            : parseHtmlString(posts?[0]?.description ?? "") ??
                                "",
                        style: TextStyle(
                            color: colors.grey2Text,
                            wordSpacing: -2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              flag ? "show_more".tr() : "show_less".tr(),
                              style: TextStyle(
                                  color: colors.blue, fontSize: 13.sp),
                            ),
                          ],
                        ),
                        onTap: () {
                          setState(() {
                            flag = !flag;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        posts?[0]?.category?.name ?? "Жамият",
                        style: TextStyle(
                            color: HexColor.fromHex(
                                posts?[0]?.category?.color ?? "#FF0000"),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        getDate(posts?[0]?.publish),
                        style: TextStyle(
                            color: colors.lightGreyText,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
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
                                    Row(
                                      children: [
                                        Text(
                                          posts?[i]?.category?.name ?? "Жамият",
                                          style: TextStyle(
                                              color: HexColor.fromHex(
                                                  posts?[i]?.category?.color ??
                                                      "#FF0000"),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 14.w,
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
