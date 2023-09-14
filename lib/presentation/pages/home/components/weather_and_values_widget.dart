import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/date_realiser.dart';
import '../../../styles/theme.dart';
import '../../../styles/theme_wrapper.dart';

class WeatherAndCourse extends StatefulWidget {
  const WeatherAndCourse({super.key});

  @override
  State<WeatherAndCourse> createState() => _WeatherAndCourseState();
}

class _WeatherAndCourseState extends State<WeatherAndCourse> {
  late bool showValuta;
  late bool showWether;
  late List<Widget> courses;
  late int selCourse;
  @override
  void initState() {
    showValuta = false;
    showWether = false;
    selCourse = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      courses = [
        InkWell(
          onTap: () {
            setState(() {
              if (selCourse != 0) selCourse = 0;
              showValuta = !showValuta;
              showWether = false;
            });
          },
          child: Row(
            children: [
              SvgPicture.asset(
                icons.usdIc,
                height: 20.h,
                fit: BoxFit.fitHeight,
              ),
              Text(
                "  USD ",
                style: TextStyle(
                    color: colors.darkBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "12066.19",
                style: TextStyle(
                    color: colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SvgPicture.asset(icons.redVector)
            ],
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              if (selCourse != 1) selCourse = 1;
              showValuta = !showValuta;
              showWether = false;
            });
          },
          child: Row(
            children: [
              SvgPicture.asset(
                icons.euroIc,
                height: 20.h,
                fit: BoxFit.fitHeight,
              ),
              Text(
                "  EUR ",
                style: TextStyle(
                    color: colors.darkBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "13120.748",
                style: TextStyle(
                    color: colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SvgPicture.asset(icons.redVector)
            ],
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              if (selCourse != 2) selCourse = 2;
              showValuta = !showValuta;
              showWether = false;
            });
          },
          child: Row(
            children: [
              SvgPicture.asset(
                icons.rublIc,
                height: 20.h,
                fit: BoxFit.fitHeight,
              ),
              Text(
                "  RUB ",
                style: TextStyle(
                    color: colors.darkBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "131.02",
                style: TextStyle(
                    color: colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SvgPicture.asset(icons.redVector)
            ],
          ),
        ),
      ];
      return AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              child: Row(
                children: [
                  courses[selCourse],
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        showWether = !showWether;
                        showValuta = false;
                      });
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          icons.weather,
                          height: 20.h,
                          fit: BoxFit.fitHeight,
                        ),
                        Text(
                          "  +9 °C",
                          style: TextStyle(
                              color: colors.darkBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            showValuta
                ? Container(
                    margin: EdgeInsets.only(bottom: 16.h),
                    padding: EdgeInsets.only(
                        left: 16.w, right: 16.w, bottom: 16.h, top: 16.h),
                    width: double.infinity,
                    color: colors.white,
                    child: Row(
                      children: [
                        selCourse == 0 ? courses[1] : courses[0],
                        const Spacer(),
                        selCourse == 0 || selCourse == 1
                            ? courses[2]
                            : courses[1],
                      ],
                    ),
                  )
                : const SizedBox(),
            showWether
                ? Container(
                    margin: EdgeInsets.only(bottom: 16.h),
                    height: 126.w,
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: colors.white,
                    child: ListView.builder(
                      itemCount: 17,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var date = DateTime.now();
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 8.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "${(date.day + index - 1) % 31 == 0 ? 31 : (date.day + index - 1) % 31} ${toMonth((date.day + index - 1) ~/ 31 + date.month).substring(0, 3)}",
                                style: TextStyle(
                                    color: colors.grey,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                index == 0
                                    ? "yesterday".tr()
                                    : index == 1
                                        ? "today".tr()
                                        : index == 2
                                            ? "tomorrow".tr()
                                            : "${(date.weekday + index - 1) % 7}_week"
                                                .tr(),
                                style: TextStyle(
                                    color: colors.darkBlue,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SvgPicture.asset(
                                icons.sun,
                                height: 34.h,
                              ),
                              Text(
                                "+23° +37°",
                                style: TextStyle(
                                    color: colors.darkBlue,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      );
    });
  }
}
