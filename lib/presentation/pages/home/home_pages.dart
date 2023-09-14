import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/pages/home/components/articles_widget.dart';
import 'package:platina/presentation/pages/home/components/business_news.dart';
import 'package:platina/presentation/pages/home/components/editor_choice.dart';
import 'package:platina/presentation/pages/home/components/goverment_sales.dart';
import 'package:platina/presentation/pages/home/components/info_widget.dart';
import 'package:platina/presentation/pages/home/components/weather_and_values_widget.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_wrapper.dart';

import '../../../application/home/home_bloc.dart';
import 'components/important_news_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext ctx, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme _) {
      return Scaffold(
        backgroundColor: colors.lightGrey,
        body: SingleChildScrollView(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Column(
                children: [
                  const WeatherAndCourse(),
                  ImportantNewsWidget(
                    importantnewsList: state.isPinnedList,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  EditorChoice(
                    articlesList: state.authorOfferedList,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ArticlesWidget(
                    articlesList: state.articlesList,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GovermentSalesWidget(
                    articlesList: state.governmentSalesList,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  BussibessNewsWidget(
                    businesnewsList: state.businessList,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InfoWidget()
                ],
              );
            },
          ),
        ),
      );
    });
  }
}
