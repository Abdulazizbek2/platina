import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoWidget extends StatefulWidget {
  const InfoWidget({super.key});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return Container(
        padding:
            EdgeInsets.only(left: 16.w, bottom: 16.h, top: 16.h, right: 16.w),
        width: double.infinity,
        // height: 900.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.h), color: colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(icons.logo),
            //HeadNews
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "about_site".tr(),
                    style: TextStyle(
                        color: colors.darkBlue,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "ads".tr(),
                    style: TextStyle(
                        color: colors.darkBlue,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "privacy_policy".tr(),
                    style: TextStyle(
                        color: colors.darkBlue,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Text(
              "info2".tr(),
              style: TextStyle(
                  color: colors.grey2Text,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "info3".tr(),
              style: TextStyle(
                  color: colors.grey2Text,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            Divider(
              color: colors.dividerColor,
              height: 30,
              thickness: 1,
            ),
            Row(
              children: [
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      const url = 'https://t.me/platinauzb';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: SvgPicture.asset(icons.telegram)),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      const url = 'https://www.instagram.com/platinauzb/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: SvgPicture.asset(icons.instagram)),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      const url = 'https://www.facebook.com/platinauz';

                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: SvgPicture.asset(icons.facebook)),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      const url =
                          'https://www.youtube.com/channel/UCwUFCV_nMacMGj_-yD6_Mow';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: SvgPicture.asset(icons.youtube)),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      const url = 'https://twitter.com/platinauz';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: SvgPicture.asset(icons.twitter)),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      const url =
                          'https://www.tiktok.com/@platinauz/video/7260016024987143432';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: SvgPicture.asset(icons.tiktok)),
                const Spacer(),
                Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colors.lightGrey),
                    child: Text(
                      "18+",
                      style: TextStyle(
                          color: colors.grey2Text,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
            Row(
              children: [
                InkWell(
                    onTap: () async {
                      const url = 'https://redmedia.uz/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: SvgPicture.asset(icons.redmedia)),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "info1".tr(),
                  style: TextStyle(
                      color: colors.grey2Text,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
