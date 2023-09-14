import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'home_models.g.dart';

abstract class PagesResponse
    implements Built<PagesResponse, PagesResponseBuilder> {
  PagesResponse._();

  factory PagesResponse([Function(PagesResponseBuilder b) updates]) =
      _$PagesResponse;

  @BuiltValueField(wireName: 'name_uz')
  String? get nameUz;

  @BuiltValueField(wireName: 'description_uz')
  String? get descriptionUz;

  @BuiltValueField(wireName: 'name_oz')
  String? get nameOz;

  @BuiltValueField(wireName: 'description_oz')
  String? get descriptionOz;

  @BuiltValueField(wireName: 'name_ru')
  String? get nameRu;

  @BuiltValueField(wireName: 'description_ru')
  String? get descriptionRu;

  @BuiltValueField(wireName: 'name_en')
  String? get nameEn;

  @BuiltValueField(wireName: 'description_en')
  String? get descriptionEn;

  @BuiltValueField(wireName: 'slug')
  String? get slug;

  static Serializer<PagesResponse> get serializer => _$pagesResponseSerializer;
}

///

abstract class Gallery implements Built<Gallery, GalleryBuilder> {
  Gallery._();

  factory Gallery([Function(GalleryBuilder b) updates]) = _$Gallery;

  @BuiltValueField(wireName: 'image')
  String? get image;

  static Serializer<Gallery> get serializer => _$gallerySerializer;
}

///

abstract class MenuResponse
    implements Built<MenuResponse, MenuResponseBuilder> {
  MenuResponse._();

  factory MenuResponse([Function(MenuResponseBuilder b) updates]) =
      _$MenuResponse;

  @BuiltValueField(wireName: 'name')
  String? get name;

  @BuiltValueField(wireName: 'slug')
  String? get slug;

  @BuiltValueField(wireName: 'color')
  String? get color;

  @BuiltValueField(wireName: 'order')
  int? get order;

  @BuiltValueField(wireName: 'link')
  String? get link;

  @BuiltValueField(wireName: 'language')
  String? get language;

  static Serializer<MenuResponse> get serializer => _$menuResponseSerializer;
}
