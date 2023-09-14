import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platina/presentation/styles/theme.dart';

import '../../../styles/theme_wrapper.dart';

class BottomNavigationComponent extends StatelessWidget {
  final int pageIndex;
  final Function(int index) onTap;

  const BottomNavigationComponent(
      {Key? key, required this.pageIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext context, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme controller) {
      return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10.r,
            offset: const Offset(0, -4),
          )
        ]),
        child: BottomNavigationBar(
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            backgroundColor: colors.white,
            currentIndex: pageIndex,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: fonts.caption
                .copyWith(fontWeight: FontWeight.w500, color: colors.grey2Text),
            selectedLabelStyle: fonts.caption.copyWith(
                fontWeight: FontWeight.w600, color: colors.orangeText),
            showSelectedLabels: true,
            //selected item
            showUnselectedLabels: true,
            elevation: 0,
            onTap: (index) {
              onTap(index);
            },
            useLegacyColorScheme: true,
            items: [
              BottomNavigationBarItem(
                  icon: pageIndex == 0
                      ? SvgPicture.asset(
                          icons.homeActive,
                          height: 24.h,
                        )
                      : SvgPicture.asset(
                          icons.homeDeactive,
                          height: 24.h,
                        ),
                  label: 'home'.tr(),
                  backgroundColor: colors.white),
              BottomNavigationBarItem(
                icon: pageIndex == 1
                    ? SvgPicture.asset(
                        icons.lentaActive,
                        height: 24.h,
                      )
                    : SvgPicture.asset(
                        icons.lentaDeactive,
                        height: 24.h,
                      ),
                label: 'story'.tr(),
              ),
              BottomNavigationBarItem(
                icon: pageIndex == 2
                    ? SvgPicture.asset(
                        icons.vectorActive,
                        height: 24.h,
                      )
                    : SvgPicture.asset(
                        icons.vectorDeactive,
                        height: 24.h,
                      ),
                label: 'popular'.tr(),
              ),
              BottomNavigationBarItem(
                icon: pageIndex == 3
                    ? SvgPicture.asset(
                        icons.tapleActive,
                        height: 24.h,
                      )
                    : SvgPicture.asset(
                        icons.tapleDeactive,
                        height: 24.h,
                      ),
                label: 'articlee'.tr(),
              ),
              BottomNavigationBarItem(
                icon: pageIndex == 4
                    ? SvgPicture.asset(
                        icons.videoActive,
                        height: 24.h,
                      )
                    : SvgPicture.asset(
                        icons.videoDeactive,
                        height: 24.h,
                      ),
                label: 'video'.tr(),
              ),
            ]),
      );
    });
  }
}
