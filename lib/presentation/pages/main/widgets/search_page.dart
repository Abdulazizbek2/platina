import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/application/home/home_bloc.dart';

import 'package:platina/infrastructure/models/search_post_model/search_model.dart';

import '../../../component/date_realiser.dart';
import '../../../styles/theme.dart';
import '../../../styles/theme_wrapper.dart';

// class CustomSearchDelegate extends SearchDelegate {
// // Demo list to show querying
//   List<String> searchTerms = [
//     "Apple",
//     "Banana",
//     "Mango",
//     "Pear",
//     "Watermelons",
//     "Blueberries",
//     "Pineapples",
//     "Strawberries"
//   ];

// // first overwrite to
// // clear the search text
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: Icon(Icons.clear),
//       ),
//     ];
//   }

// // second overwrite to pop out of search menu
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         close(context, null);
//       },
//       icon: Icon(Icons.arrow_back),
//     );
//   }

// // third overwrite to show query result
//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in searchTerms) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }

// // last overwrite to show the
// // querying process at the runtime
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in searchTerms) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }
// }

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
              alignment: Alignment.topCenter,
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors.darkbluePr.withOpacity(0.6),
              ),
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 17.h, left: 17.h, right: 17.h, bottom: 5.h),
                        padding: EdgeInsets.only(left: 20.w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: colors.white,
                            border:
                                Border.all(color: colors.linkText, width: 2.sp),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: TextField(
                            decoration: InputDecoration(
                              hintText: "search".tr(),

                              border: InputBorder.none,
                              // prefixIcon: Icon(Icons.search)
                            ),
                            cursorColor: colors.coursorColor,
                            onChanged: (value) {
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.search(value));
                            }),
                      ),
                      (state.search?.results.length ?? 0) != 0
                          ? Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 17.w, right: 17.w),
                              decoration: BoxDecoration(
                                color: colors.white,
                                borderRadius: BorderRadius.circular(
                                  8.r,
                                ),
                                border: Border.all(color: colors.dividerColor),
                              ),
                              child: ListView.builder(
                                padding: EdgeInsets.only(
                                  left: 10.w,
                                  right: 10.w,
                                  top: 10.h,
                                ),
                                itemCount:
                                    (state.search?.results.length ?? 0) > 4
                                        ? 4
                                        : state.search?.results.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  SearchPost? model =
                                      state.search?.results[index];
                                  return InkWell(
                                    onTap: () {},
                                    child: Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.only(
                                            left: 10.w,
                                            right: 10.w,
                                            top: 7.h,
                                            bottom: 7.h),
                                        margin: EdgeInsets.only(bottom: 10.h),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CachedNetworkImage(
                                              imageUrl: getImageFullUrl(
                                                  model?.getImageMediumUrl),
                                              imageBuilder:
                                                  (context, imageProvider) =>
                                                      Container(
                                                height: 36.h,
                                                width: 36.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.r),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: imageProvider,
                                                  ),
                                                ),
                                              ),
                                              placeholder: (context, url) =>
                                                  const CircularProgressIndicator
                                                      .adaptive(),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              margin: EdgeInsets.only(
                                                left: 10.w,
                                                // right: 10.w,
                                              ),
                                              width: 250.w,
                                              child: Text(
                                                model?.title ?? '',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: colors.darkBlue,
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        )),
                                  );
                                },
                              ))
                          : const SizedBox(),
                    ],
                  );
                },
              )));
    });
  }
}
