library search_modelt;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../posts/posts.dart';

part 'search_model.g.dart';

abstract class SearchModel implements Built<SearchModel, SearchModelBuilder> {
  SearchModel._();

  factory SearchModel([updates(SearchModelBuilder b)]) = _$SearchModel;

  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'next')
  String? get next;
  @BuiltValueField(wireName: 'previous')
  String? get previous;
  @BuiltValueField(wireName: 'results')
  BuiltList<SearchPost> get results;

  static Serializer<SearchModel> get serializer => _$searchModelSerializer;
}

abstract class SearchPost implements Built<SearchPost, SearchPostBuilder> {
  SearchPost._();

  factory SearchPost([updates(SearchPostBuilder b)]) = _$SearchPost;

  @BuiltValueField(wireName: 'category')
  Category? get category;
  @BuiltValueField(wireName: 'title')
  String? get title;
  @BuiltValueField(wireName: 'short_description')
  String? get shortDescription;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'publish')
  String? get publish;
  @BuiltValueField(wireName: 'get_image_medium_url')
  String? get getImageMediumUrl;
  @BuiltValueField(wireName: 'number_of_views')
  int? get numberOfViews;
  @BuiltValueField(wireName: 'language')
  String? get language;

  static Serializer<SearchPost> get serializer => _$searchPostSerializer;
}
