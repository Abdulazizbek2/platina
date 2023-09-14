import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:platina/infrastructure/models/articles/articless.dart';
import 'package:platina/infrastructure/models/home/home_models.dart';

import '../../presentation/pages/core/app_widget.dart';
import '../core/built_value_converter.dart';
import '../core/interceptors.dart';
import '../models/auth/auth.dart';
import '../models/image_upload/image_upload.dart';
import '../models/posts/posts.dart';
import '../models/search_post_model/search_model.dart';

part 'apis.chopper.dart';

const String baseUrlPlatina = "https://cp.dev.platina.uz";

/// Home Service
@ChopperApi(baseUrl: '/api')
abstract class HomeeService extends ChopperService {
  @Get(path: '/categories/')
  Future<Response<BuiltList<Category>>> categories(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/menu/')
  Future<Response<BuiltList<MenuResponse>>> menu(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/pages/')
  Future<Response<BuiltList<PagesResponse>>> pages(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/articles/')
  Future<Response<Articless>> articles(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/popular-posts/')
  Future<Response<Articless>> popularPosts(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/post/redirect/{short_url}')
  Future<Response<Articless>> postRedirect(
    @Path("short_url") String? shortUrl,
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/posts/')
  Future<Response<Articless>> posts(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/posts/author-offered/')
  Future<Response<Articless>> authorOffered(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/posts/business/')
  Future<Response<BuiltList<PostsResponse>>> business(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/posts/category/{category}')
  Future<Response<Articless>> category(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
    @Path("category") String? category,
  );

  @Get(path: '/posts/gallery/')
  Future<Response<Articless>> gallery(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/posts/is-pinned')
  Future<Response<Articless>> isPinned(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/posts/list/tag={tag_slug}')
  Future<Response<BuiltList<PostsResponse>>> tagSlugList(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
    @Path("tag_slug") String? tagSlug,
  );

  @Get(path: '/posts/subject/{subject_slug}')
  Future<Response<PostsResponse>> subjectSlug(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
    @Path("subject_slug") String? subjectSlug,
  );

  @Get(path: '/posts/youtube/')
  Future<Response<Articless>> youtube(
    @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
  );

  @Get(path: '/search/')
  Future<Response<SearchModel>> search(
    // @Header("Authorization") String? apiKey,
    @Header("X-PLATINA-API-KEY") String? platinaApiKey,
    @Query("q") String? query,
  );

  static HomeeService create(String endPoint) =>
      _$HomeeService(_Client("$baseUrlPlatina/$endPoint", true));
}

/// old services
@ChopperApi(baseUrl: '/api/')
abstract class AuthService extends ChopperService {
  @Get(path: 'verify/{phone_number}/{code}/')
  Future<Response<SuccessResponseModel>> verify(
    @Path('phone_number') String phoneNumber,
    @Path('code') String code,
  );

  @Post(path: 'barbers/register/')
  Future<Response<SignUpResponseModel>> signUpBarber(
    @Body() BarberSignUpModel body,
  );

  static AuthService create() =>
      _$AuthService(_Client('http://157.241.21.225', true));
}

@ChopperApi(baseUrl: '/api/')
abstract class ImageUploadService extends ChopperService {
  @Post(path: 'media/upload-file/')
  @multipart
  Future<Response<ImageUploadResponseModel>> imageUpload(
    @Header('object-type') String objectType,
    @PartFile('file') String file,
  );

  static ImageUploadService create() =>
      _$ImageUploadService(_Client('http://157.241.21.225', true));
}

class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: Uri.parse(baseUrl),
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                    ...alice.getChopperInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}
