import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:platina/infrastructure/models/articles/articless.dart';
import 'package:platina/infrastructure/models/home/home_models.dart';

import '../../infrastructure/models/posts/posts.dart';
import '../../infrastructure/models/search_post_model/search_model.dart';
import '../common/failure.dart';

abstract class IHomeFacade {
  Future<Either<ResponseFailure, BuiltList<PagesResponse>>> pages();

  Future<Either<ResponseFailure, Articless>> popularPosts();

  Future<Either<ResponseFailure, Articless>> articles();

  Future<Either<ResponseFailure, BuiltList<Category>>> categories();

  Future<Either<ResponseFailure, BuiltList<MenuResponse>>> menu();

  Future<Either<ResponseFailure, Articless>> postRedirect(
      {required String shortUrl});

  Future<Either<ResponseFailure, Articless>> posts();

  Future<Either<ResponseFailure, Articless>> authorOffered();

  Future<Either<ResponseFailure, BuiltList<PostsResponse>>> business();

  Future<Either<ResponseFailure, Articless>> category(
      {required String category});

  Future<Either<ResponseFailure, Articless>> gallery();

  Future<Either<ResponseFailure, Articless>> isPinned();

  Future<Either<ResponseFailure, BuiltList<PostsResponse>>> tagSlugList(
      {required String tagSlug});

  Future<Either<ResponseFailure, PostsResponse>> subjectSlug(
      {required String subjectSlug});

  Future<Either<ResponseFailure, Articless>> youtube();

  Future<Either<ResponseFailure, SearchModel>> search(String query);
}
