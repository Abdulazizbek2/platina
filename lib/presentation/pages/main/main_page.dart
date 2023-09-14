import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/application/home/home_bloc.dart';
import 'package:platina/infrastructure/apis/apis.dart';
import 'package:platina/infrastructure/repositories/home_repo.dart';
import 'package:platina/infrastructure/services/db_service.dart';
import 'package:platina/presentation/pages/home/home_pages.dart';
import 'package:platina/presentation/pages/main/widgets/bottom_navigation_components.dart';
import 'package:platina/presentation/pages/main/widgets/drawer_widget.dart';
import 'package:platina/presentation/pages/util/lenta_page.dart';
import 'package:platina/presentation/pages/util/popular_page.dart';
import 'package:platina/presentation/pages/util/story_page.dart';
import 'package:platina/presentation/pages/util/video_page.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_wrapper.dart';

import 'widgets/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late bool isShowSearchBar;
  int pageIndex = 0;

  late List<Widget> pageList;
  final scaffoldState = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController? controller;
  late GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  initState() {
    isShowSearchBar = false;
    super.initState();
    _scaffoldKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext ctx, CustomColorSet colors, FontSet fonts,
          IconSet icons, GridTheme _) {
        return BlocProvider(
            lazy: false,
            create: (_) => HomeBloc(HomeRepository(
                  context.read<DBService>(),
                  HomeeService.create(
                      context.locale == Locale('uz', 'UZ') ? "uz-latn" : "uz"),
                ))
                  ..add(const HomeEvent.menu())
                  ..add(const HomeEvent.changeSelectedItemMenu(10))
                  ..add(const HomeEvent.popularPosts())
                  ..add(const HomeEvent.articles())
                  ..add(const HomeEvent.posts())
                  ..add(const HomeEvent.authorOffered())
                  ..add(const HomeEvent.business())
                  ..add(const HomeEvent.gallery())
                  ..add(const HomeEvent.isPinned())
                  ..add(const HomeEvent.youtube())
                  ..add(const HomeEvent.search(""))
                  ..add(const HomeEvent.governmentSalesList())
                  ..add(const HomeEvent.categories())
                  ..add(const HomeEvent.search("")),
            child: Scaffold(
              primary: true,
              appBar: AppBar(
                surfaceTintColor: colors.white,
                leading: IconButton(
                  icon: const Icon(Icons.dehaze),
                  onPressed: () {
                    setState(() {
                      isShowSearchBar = false;
                    });
                    if (_scaffoldKey.currentState?.isDrawerOpen == false) {
                      _scaffoldKey.currentState?.openDrawer();
                    } else {
                      _scaffoldKey.currentState?.openEndDrawer();
                    }
                  },
                ),
                automaticallyImplyLeading: false,
                title: SvgPicture.asset(icons.logo),
                centerTitle: true,
                actions: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        // showSearch(
                        //     context: context,
                        //     // delegate to customize the search bar
                        //     delegate: CustomSearchDelegate());
                        // Navigator.push(context, AppRoutes.searchPage());

                        setState(() {
                          _scaffoldKey.currentState?.openEndDrawer();
                          isShowSearchBar = !isShowSearchBar;
                        });
                      },
                      icon: SvgPicture.asset(
                        icons.search,
                        height: 60.h,
                      ))
                ],
              ),
              key: scaffoldState,
              body: Stack(
                children: [
                  Scaffold(
                    key: _scaffoldKey,
                    drawer: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                      if (state.menu == null) {
                        return const SizedBox(
                          height: 500,
                          width: 300,
                          child: Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                      }
                      return HomeDrawerWidget(
                        menu: state.menu!,
                        index: state.selectMenuItem!,
                      );
                    }),
                    body: IndexedStack(
                      index: pageIndex,
                      children: pageList = [
                        const HomePage(),
                        const LentaPage(),
                        const PopularPage(),
                        const StoryPage(),
                        const VideoPage(),
                      ],
                    ),
                    bottomNavigationBar: BottomNavigationComponent(
                      pageIndex: pageIndex,
                      onTap: (index) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                    ),
                  ),
                  isShowSearchBar
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              isShowSearchBar = false;
                            });
                          },
                          child: const SearchPage())
                      : const SizedBox(),
                ],
              ),
            ));
      },
    );
  }
}
