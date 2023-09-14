library articless;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../posts/posts.dart';

part 'articless.g.dart';

abstract class Articless implements Built<Articless, ArticlessBuilder> {
  Articless._();

  factory Articless([updates(ArticlessBuilder b)]) = _$Articless;

  @BuiltValueField(wireName: 'count')
  int? get count;
  @BuiltValueField(wireName: 'next')
  String? get next;
  @BuiltValueField(wireName: 'previous')
  String? get previous;
  @BuiltValueField(wireName: 'results')
  BuiltList<PostsResponse?>? get results;
  static Serializer<Articless> get serializer => _$articlessSerializer;
}
