import 'package:flutter/material.dart';
import 'package:platina/presentation/pages/util/lenta_page.dart';
import 'package:platina/presentation/pages/util/popular_page.dart';
import 'package:platina/presentation/pages/util/story_page.dart';

import '../../domain/auth/auth_failure.dart';
import '../../infrastructure/services/db_service.dart';
import '../pages/auth/auth_intro.dart';
import '../pages/core/app_widget.dart';
import '../pages/core/no_connection.dart';
import '../pages/home/home_pages.dart';
import '../pages/main/main_page.dart';
import '../pages/main/widgets/search_page.dart';
import '../pages/util/video_page.dart';

class AppRoutes {
  static PageRoute getAppWidget(
    DBService dbService,
    bool connectivityResult,
  ) =>
      MaterialPageRoute(
        builder: (_) => AppWidget(
          dbService: dbService,
          connectivityX: connectivityResult,
        ),
      );

  static MaterialPageRoute authIntro() {
    return MaterialPageRoute(builder: (_) => const AuthIntroPage());
  }

  static MaterialPageRoute getNetworkNotFound() => MaterialPageRoute(
        builder: (_) => const NoConnection(),
      );

  static MaterialPageRoute searchPage() => MaterialPageRoute(
      builder: (_) => const SearchPage(),
      fullscreenDialog: true,
      maintainState: false,
      allowSnapshotting: false);

  /// onGenerate
  static PageRoute onGenerateRoute({
    required BuildContext context,
    required AuthFailure? authFailure,
    required bool notConnection,
  }) {
    if (notConnection) {
      return getNetworkNotFound();
    } else if (authFailure == null) {
      return main();
    } else {
      return main();
    }
  }

  /// main
  static MaterialPageRoute main() => MaterialPageRoute(
        builder: (_) => const MainPage(),
      );

  static MaterialPageRoute getHome() => MaterialPageRoute(
        builder: (_) => const HomePage(),
      );

  static MaterialPageRoute getLenta() => MaterialPageRoute(
        builder: (_) => const LentaPage(),
      );

  static MaterialPageRoute getPopular() => MaterialPageRoute(
        builder: (_) => const PopularPage(),
      );

  static MaterialPageRoute getStory() => MaterialPageRoute(
        builder: (_) => const StoryPage(),
      );

  static MaterialPageRoute getVideo() => MaterialPageRoute(
        builder: (_) => const VideoPage(),
      );
}
