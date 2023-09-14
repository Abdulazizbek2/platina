import 'package:built_collection/built_collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/application/home/home_bloc.dart';
import 'package:platina/infrastructure/models/home/home_models.dart';
import 'package:platina/presentation/component/date_realiser.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../routes/routes.dart';
import 'polygon.dart';

class HomeDrawerWidget extends StatefulWidget {
  final BuiltList<MenuResponse>? menu;
  final int index;

  const HomeDrawerWidget({
    super.key,
    required this.menu,
    required this.index,
  });

  @override
  State<HomeDrawerWidget> createState() => _HomeDrawerWidgetState();
}

class _HomeDrawerWidgetState extends State<HomeDrawerWidget> {
  late int selectItemMenu;

  @override
  void initState() {
    selectItemMenu = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Drawer(
          // shadowColor: Colors.white,
          // backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          child: ThemeWrapper(builder: (BuildContext context,
              CustomColorSet colors,
              FontSet fonts,
              IconSet icons,
              GridTheme _) {
            return SingleChildScrollView(
              child: Container(
                  width: 257.w,
                  decoration: BoxDecoration(
                    color: colors.white,
                    borderRadius: BorderRadius.zero,
                  ),
                  padding: EdgeInsets.only(
                      top: 16.h, left: 16.w, right: 16.w, bottom: 12.h),
                  // color: colors.white,
                  child: Column(
                    children: [
                      for (int i = 0; i < (widget.menu?.length ?? 1); i++)
                        InkWell(
                          onTap: () {
                            context
                                .read<HomeBloc>()
                                .add(HomeEvent.changeSelectedItemMenu(i));
                          },
                          child: Container(
                            height: 44.h,
                            margin: EdgeInsets.only(bottom: 5.h),
                            padding: EdgeInsets.only(
                                top: 8.h, bottom: 8.h, left: 16.w, right: 16.w),
                            decoration: BoxDecoration(
                              color: i != widget.index
                                  ? colors.transparent
                                  : HexColor.fromHex(widget.menu?[i].color)
                                      .withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                PolygonIcon(
                                  color: i != widget.index
                                      ? colors.lightGreyText
                                      : HexColor.fromHex(widget.menu?[i].color),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  widget.menu?[i].name ?? 'Сиёсат',
                                  style: TextStyle(
                                      color: i != widget.index
                                          ? colors.darkBlue
                                          : HexColor.fromHex(
                                              widget.menu?[i].color),
                                      fontSize: 16.sp,
                                      fontWeight: i != widget.index
                                          ? FontWeight.w500
                                          : FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      Divider(
                        color: colors.dividerColor,
                        height: 30.h,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              context.setLocale(Locale('uk', 'UK'));
                              Navigator.pushAndRemoveUntil(
                                  context, AppRoutes.main(), (route) => false);
                            },
                            child: Container(
                                padding: EdgeInsets.all(12.w),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: context.locale == Locale('uk', 'UK')
                                      ? colors.lightGrey
                                      : colors.transparent,
                                ),
                                child: Text(
                                  "Ўзб",
                                  style: TextStyle(
                                      color: colors.darkbluePr,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              context.setLocale(Locale('uz', 'UZ'));
                              Navigator.pushAndRemoveUntil(
                                  context, AppRoutes.main(), (route) => false);
                            },
                            child: Container(
                                padding: EdgeInsets.all(12.w),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: context.locale == Locale('uz', 'UZ')
                                      ? colors.lightGrey
                                      : colors.transparent,
                                ),
                                child: Text(
                                  "O'zb",
                                  style: TextStyle(
                                      color: colors.darkbluePr,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                          InkWell(
                            onTap: () async {},
                            child: Container(
                                padding: EdgeInsets.all(12.w),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: context.locale == Locale('ru', 'RU')
                                      ? colors.lightGrey
                                      : colors.transparent,
                                ),
                                child: Text(
                                  "Рус",
                                  style: TextStyle(
                                      color: colors.darkbluePr,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                padding: EdgeInsets.all(12.w),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: context.locale == Locale('en', 'US')
                                      ? colors.lightGrey
                                      : colors.transparent,
                                ),
                                child: Text(
                                  "Eng",
                                  style: TextStyle(
                                      color: colors.darkbluePr,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                        ],
                      ),
                      Divider(
                        color: colors.dividerColor,
                        height: 30,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    const url = 'https://t.me/platinauzb';
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      await launchUrl(Uri.parse(url),
                                          mode: LaunchMode.externalApplication);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 5.w, top: 5.w, bottom: 5.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: colors.lightGrey),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            icons.telegramBlue,
                                          ),
                                          Text(
                                            "platinauzb",
                                            style: TextStyle(
                                                color: colors.darkbluePr,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.facebook.com/platinauz';

                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      await launchUrl(Uri.parse(url),
                                          mode: LaunchMode.externalApplication);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 5.w, top: 5.w, bottom: 5.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: colors.lightGrey),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            icons.facebookBlue,
                                          ),
                                          Text(
                                            "platinauzb",
                                            style: TextStyle(
                                                color: colors.darkbluePr,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url = 'https://twitter.com/platinauz';
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      await launchUrl(Uri.parse(url),
                                          mode: LaunchMode.externalApplication);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 5.w, top: 5.w, bottom: 5.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: colors.lightGrey),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            icons.twitterBlue,
                                          ),
                                          Text(
                                            "platinauzb",
                                            style: TextStyle(
                                                color: colors.darkbluePr,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.instagram.com/platinauzb/';
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      await launchUrl(Uri.parse(url),
                                          mode: LaunchMode.externalApplication);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 5.w, top: 5.w, bottom: 5.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: colors.lightGrey),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            icons.instagramBlue,
                                          ),
                                          Text(
                                            "platinauzb",
                                            style: TextStyle(
                                                color: colors.darkbluePr,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.youtube.com/channel/UCwUFCV_nMacMGj_-yD6_Mow';
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      await launchUrl(Uri.parse(url),
                                          mode: LaunchMode.externalApplication);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 5.w, top: 5.w, bottom: 5.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: colors.lightGrey),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            icons.youtubeBlue,
                                          ),
                                          Text(
                                            "platinauzb",
                                            style: TextStyle(
                                                color: colors.darkbluePr,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.tiktok.com/@platinauz/video/7260016024987143432';
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      await launchUrl(Uri.parse(url),
                                          mode: LaunchMode.externalApplication);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 5.w, top: 5.w, bottom: 5.w),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: colors.lightGrey),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            icons.tiktokBlue,
                                          ),
                                          Text(
                                            "platinauzb",
                                            style: TextStyle(
                                                color: colors.darkbluePr,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            );
          }));
    });
  }
}
