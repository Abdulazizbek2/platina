// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_models.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PagesResponse> _$pagesResponseSerializer =
    new _$PagesResponseSerializer();
Serializer<Gallery> _$gallerySerializer = new _$GallerySerializer();
Serializer<MenuResponse> _$menuResponseSerializer =
    new _$MenuResponseSerializer();

class _$PagesResponseSerializer implements StructuredSerializer<PagesResponse> {
  @override
  final Iterable<Type> types = const [PagesResponse, _$PagesResponse];
  @override
  final String wireName = 'PagesResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, PagesResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameUz;
    if (value != null) {
      result
        ..add('name_uz')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descriptionUz;
    if (value != null) {
      result
        ..add('description_uz')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameOz;
    if (value != null) {
      result
        ..add('name_oz')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descriptionOz;
    if (value != null) {
      result
        ..add('description_oz')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameRu;
    if (value != null) {
      result
        ..add('name_ru')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descriptionRu;
    if (value != null) {
      result
        ..add('description_ru')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameEn;
    if (value != null) {
      result
        ..add('name_en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descriptionEn;
    if (value != null) {
      result
        ..add('description_en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PagesResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PagesResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name_uz':
          result.nameUz = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description_uz':
          result.descriptionUz = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_oz':
          result.nameOz = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description_oz':
          result.descriptionOz = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_ru':
          result.nameRu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description_ru':
          result.descriptionRu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_en':
          result.nameEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description_en':
          result.descriptionEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GallerySerializer implements StructuredSerializer<Gallery> {
  @override
  final Iterable<Type> types = const [Gallery, _$Gallery];
  @override
  final String wireName = 'Gallery';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gallery object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gallery deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GalleryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MenuResponseSerializer implements StructuredSerializer<MenuResponse> {
  @override
  final Iterable<Type> types = const [MenuResponse, _$MenuResponse];
  @override
  final String wireName = 'MenuResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, MenuResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MenuResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PagesResponse extends PagesResponse {
  @override
  final String? nameUz;
  @override
  final String? descriptionUz;
  @override
  final String? nameOz;
  @override
  final String? descriptionOz;
  @override
  final String? nameRu;
  @override
  final String? descriptionRu;
  @override
  final String? nameEn;
  @override
  final String? descriptionEn;
  @override
  final String? slug;

  factory _$PagesResponse([void Function(PagesResponseBuilder)? updates]) =>
      (new PagesResponseBuilder()..update(updates))._build();

  _$PagesResponse._(
      {this.nameUz,
      this.descriptionUz,
      this.nameOz,
      this.descriptionOz,
      this.nameRu,
      this.descriptionRu,
      this.nameEn,
      this.descriptionEn,
      this.slug})
      : super._();

  @override
  PagesResponse rebuild(void Function(PagesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PagesResponseBuilder toBuilder() => new PagesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PagesResponse &&
        nameUz == other.nameUz &&
        descriptionUz == other.descriptionUz &&
        nameOz == other.nameOz &&
        descriptionOz == other.descriptionOz &&
        nameRu == other.nameRu &&
        descriptionRu == other.descriptionRu &&
        nameEn == other.nameEn &&
        descriptionEn == other.descriptionEn &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nameUz.hashCode);
    _$hash = $jc(_$hash, descriptionUz.hashCode);
    _$hash = $jc(_$hash, nameOz.hashCode);
    _$hash = $jc(_$hash, descriptionOz.hashCode);
    _$hash = $jc(_$hash, nameRu.hashCode);
    _$hash = $jc(_$hash, descriptionRu.hashCode);
    _$hash = $jc(_$hash, nameEn.hashCode);
    _$hash = $jc(_$hash, descriptionEn.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PagesResponse')
          ..add('nameUz', nameUz)
          ..add('descriptionUz', descriptionUz)
          ..add('nameOz', nameOz)
          ..add('descriptionOz', descriptionOz)
          ..add('nameRu', nameRu)
          ..add('descriptionRu', descriptionRu)
          ..add('nameEn', nameEn)
          ..add('descriptionEn', descriptionEn)
          ..add('slug', slug))
        .toString();
  }
}

class PagesResponseBuilder
    implements Builder<PagesResponse, PagesResponseBuilder> {
  _$PagesResponse? _$v;

  String? _nameUz;
  String? get nameUz => _$this._nameUz;
  set nameUz(String? nameUz) => _$this._nameUz = nameUz;

  String? _descriptionUz;
  String? get descriptionUz => _$this._descriptionUz;
  set descriptionUz(String? descriptionUz) =>
      _$this._descriptionUz = descriptionUz;

  String? _nameOz;
  String? get nameOz => _$this._nameOz;
  set nameOz(String? nameOz) => _$this._nameOz = nameOz;

  String? _descriptionOz;
  String? get descriptionOz => _$this._descriptionOz;
  set descriptionOz(String? descriptionOz) =>
      _$this._descriptionOz = descriptionOz;

  String? _nameRu;
  String? get nameRu => _$this._nameRu;
  set nameRu(String? nameRu) => _$this._nameRu = nameRu;

  String? _descriptionRu;
  String? get descriptionRu => _$this._descriptionRu;
  set descriptionRu(String? descriptionRu) =>
      _$this._descriptionRu = descriptionRu;

  String? _nameEn;
  String? get nameEn => _$this._nameEn;
  set nameEn(String? nameEn) => _$this._nameEn = nameEn;

  String? _descriptionEn;
  String? get descriptionEn => _$this._descriptionEn;
  set descriptionEn(String? descriptionEn) =>
      _$this._descriptionEn = descriptionEn;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  PagesResponseBuilder();

  PagesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameUz = $v.nameUz;
      _descriptionUz = $v.descriptionUz;
      _nameOz = $v.nameOz;
      _descriptionOz = $v.descriptionOz;
      _nameRu = $v.nameRu;
      _descriptionRu = $v.descriptionRu;
      _nameEn = $v.nameEn;
      _descriptionEn = $v.descriptionEn;
      _slug = $v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PagesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PagesResponse;
  }

  @override
  void update(void Function(PagesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PagesResponse build() => _build();

  _$PagesResponse _build() {
    final _$result = _$v ??
        new _$PagesResponse._(
            nameUz: nameUz,
            descriptionUz: descriptionUz,
            nameOz: nameOz,
            descriptionOz: descriptionOz,
            nameRu: nameRu,
            descriptionRu: descriptionRu,
            nameEn: nameEn,
            descriptionEn: descriptionEn,
            slug: slug);
    replace(_$result);
    return _$result;
  }
}

class _$Gallery extends Gallery {
  @override
  final String? image;

  factory _$Gallery([void Function(GalleryBuilder)? updates]) =>
      (new GalleryBuilder()..update(updates))._build();

  _$Gallery._({this.image}) : super._();

  @override
  Gallery rebuild(void Function(GalleryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GalleryBuilder toBuilder() => new GalleryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gallery && image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gallery')..add('image', image))
        .toString();
  }
}

class GalleryBuilder implements Builder<Gallery, GalleryBuilder> {
  _$Gallery? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GalleryBuilder();

  GalleryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gallery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gallery;
  }

  @override
  void update(void Function(GalleryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gallery build() => _build();

  _$Gallery _build() {
    final _$result = _$v ?? new _$Gallery._(image: image);
    replace(_$result);
    return _$result;
  }
}

class _$MenuResponse extends MenuResponse {
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? color;
  @override
  final int? order;
  @override
  final String? link;
  @override
  final String? language;

  factory _$MenuResponse([void Function(MenuResponseBuilder)? updates]) =>
      (new MenuResponseBuilder()..update(updates))._build();

  _$MenuResponse._(
      {this.name, this.slug, this.color, this.order, this.link, this.language})
      : super._();

  @override
  MenuResponse rebuild(void Function(MenuResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuResponseBuilder toBuilder() => new MenuResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuResponse &&
        name == other.name &&
        slug == other.slug &&
        color == other.color &&
        order == other.order &&
        link == other.link &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MenuResponse')
          ..add('name', name)
          ..add('slug', slug)
          ..add('color', color)
          ..add('order', order)
          ..add('link', link)
          ..add('language', language))
        .toString();
  }
}

class MenuResponseBuilder
    implements Builder<MenuResponse, MenuResponseBuilder> {
  _$MenuResponse? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  MenuResponseBuilder();

  MenuResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _slug = $v.slug;
      _color = $v.color;
      _order = $v.order;
      _link = $v.link;
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuResponse;
  }

  @override
  void update(void Function(MenuResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MenuResponse build() => _build();

  _$MenuResponse _build() {
    final _$result = _$v ??
        new _$MenuResponse._(
            name: name,
            slug: slug,
            color: color,
            order: order,
            link: link,
            language: language);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
