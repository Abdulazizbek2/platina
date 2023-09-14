import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:platina/domain/common/failure.dart';
import 'package:platina/infrastructure/models/articles/articless.dart';
import 'package:platina/infrastructure/models/home/home_models.dart';

import '../../domain/home/i_home_facade.dart';
import '../apis/apis.dart';
import '../core/exceptions.dart';
import '../models/posts/posts.dart';
import '../models/search_post_model/search_model.dart';
import '../services/db_service.dart';
import '../services/log_service.dart';

const String apiKey = "494e522c68744b1ad3e0d6d9aee9905e8cc764ec";
const String platinaApiKey = "QdO5hA3D.iSevNc03mulrumyLiPqlcM03M9clZdDQ";

class HomeRepository implements IHomeFacade {
  final DBService dbService;
  final HomeeService _homeService;

  HomeRepository(
    this.dbService,
    this._homeService,
  );

  @override
  Future<Either<ResponseFailure, BuiltList<PagesResponse>>> pages() async {
    try {
      final res = await _homeService.pages(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> popularPosts() async {
    try {
      final res = await _homeService.popularPosts(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> articles() async {
    try {
      final res =
          await _homeService.articles(apiKey, platinaApiKey).then((value) {
        return value;
      });
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, BuiltList<Category>>> categories() async {
    try {
      final res = await _homeService.categories(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, BuiltList<MenuResponse>>> menu() async {
    try {
      final res = await _homeService.menu(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> postRedirect(
      {required String shortUrl}) async {
    try {
      final res = await _homeService.postRedirect(
        shortUrl,
        apiKey,
        platinaApiKey,
      );
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> posts() async {
    try {
      final res = await _homeService.posts(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> authorOffered() async {
    try {
      final res = await _homeService.authorOffered(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, BuiltList<PostsResponse>>> business() async {
    try {
      final res = await _homeService.business(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> category(
      {required String category}) async {
    try {
      final res = await _homeService.category(
        apiKey,
        platinaApiKey,
        category,
      );
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> gallery() async {
    try {
      final res = await _homeService.gallery(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> isPinned() async {
    try {
      final res = await _homeService.isPinned(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, BuiltList<PostsResponse>>> tagSlugList(
      {required String tagSlug}) async {
    try {
      final res = await _homeService.tagSlugList(
        apiKey,
        platinaApiKey,
        tagSlug,
      );
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, PostsResponse>> subjectSlug(
      {required String subjectSlug}) async {
    try {
      final res = await _homeService.subjectSlug(
        apiKey,
        platinaApiKey,
        subjectSlug,
      );
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Articless>> youtube() async {
    try {
      final res = await _homeService.youtube(apiKey, platinaApiKey);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, SearchModel>> search(String query) async {
    try {
      final res = await _homeService.search(
          // apiKey,
          platinaApiKey,
          query);
      if (res.isSuccessful) {
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}
