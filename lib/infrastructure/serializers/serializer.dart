import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:platina/infrastructure/models/articles/articless.dart';
import '../models/auth/auth.dart';
import '../models/home/home_models.dart';
import '../models/image_upload/image_upload.dart';
import '../models/posts/posts.dart';
import '../models/search_post_model/search_model.dart';

part 'serializer.g.dart';

@SerializersFor([
  BarberSignUpModel,
  SignUpResponseModel,
  SuccessResponseModel,
  ImageUploadResponseModel,
  ImageUploadModel,
  LoginModel,
  Articless,
  PostsResponse,
  SearchModel,
  SearchPost,

  /// platina
  PagesResponse,
  Category,
  Gallery,
  MenuResponse,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
