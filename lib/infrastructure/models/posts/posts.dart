library posts_response;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posts.g.dart';

abstract class PostsResponse
    implements Built<PostsResponse, PostsResponseBuilder> {
  PostsResponse._();

  factory PostsResponse([updates(PostsResponseBuilder b)]) = _$PostsResponse;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'category')
  Category? get category;
  @BuiltValueField(wireName: 'title')
  String? get title;
  @BuiltValueField(wireName: 'short_description')
  String? get shortDescription;
  @BuiltValueField(wireName: 'relates_to')
  int? get relatesTo;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'author_offered')
  bool? get authorOffered;
  @BuiltValueField(wireName: 'publish')
  String? get publish;
  @BuiltValueField(wireName: 'is_pinned')
  bool? get isPinned;
  @BuiltValueField(wireName: 'number_of_views')
  int? get numberOfViews;
  @BuiltValueField(wireName: 'image')
  String? get image;
  @BuiltValueField(wireName: 'image_extra_large')
  String? get imageExtraLarge;
  @BuiltValueField(wireName: 'image_large')
  String? get imageLarge;
  @BuiltValueField(wireName: 'image_medium')
  String? get imageMedium;
  @BuiltValueField(wireName: 'image_small')
  String? get imageSmall;
  @BuiltValueField(wireName: 'image_source')
  String? get imageSource;
  @BuiltValueField(wireName: 'image_name')
  String? get imageName;
  @BuiltValueField(wireName: 'gallery')
  BuiltList<Galery?>? get gallery;
  @BuiltValueField(wireName: 'short_url')
  String? get shortUrl;
  @BuiltValueField(wireName: 'youtube_link')
  String? get youtubeLink;
  @BuiltValueField(wireName: 'tags')
  BuiltList<String?>? get tags;
  @BuiltValueField(wireName: 'expired_at')
  String? get expiredAt;
  @BuiltValueField(wireName: 'language')
  String? get language;

  static Serializer<PostsResponse> get serializer => _$postsResponseSerializer;
}

abstract class Category implements Built<Category, CategoryBuilder> {
  Category._();

  factory Category([updates(CategoryBuilder b)]) = _$Category;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'color')
  String? get color;

  static Serializer<Category> get serializer => _$categorySerializer;
}

abstract class Galery implements Built<Galery, GaleryBuilder> {
  Galery._();

  factory Galery([updates(GaleryBuilder b)]) = _$Galery;

  @BuiltValueField(wireName: 'image')
  String? get image;

  static Serializer<Galery> get serializer => _$galerySerializer;
}
