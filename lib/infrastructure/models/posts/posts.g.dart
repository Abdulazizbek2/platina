// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsResponse> _$postsResponseSerializer =
    new _$PostsResponseSerializer();
Serializer<Category> _$categorySerializer = new _$CategorySerializer();
Serializer<Galery> _$galerySerializer = new _$GalerySerializer();

class _$PostsResponseSerializer implements StructuredSerializer<PostsResponse> {
  @override
  final Iterable<Type> types = const [PostsResponse, _$PostsResponse];
  @override
  final String wireName = 'PostsResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Category)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDescription;
    if (value != null) {
      result
        ..add('short_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.relatesTo;
    if (value != null) {
      result
        ..add('relates_to')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.authorOffered;
    if (value != null) {
      result
        ..add('author_offered')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.publish;
    if (value != null) {
      result
        ..add('publish')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPinned;
    if (value != null) {
      result
        ..add('is_pinned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.numberOfViews;
    if (value != null) {
      result
        ..add('number_of_views')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageExtraLarge;
    if (value != null) {
      result
        ..add('image_extra_large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageLarge;
    if (value != null) {
      result
        ..add('image_large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageMedium;
    if (value != null) {
      result
        ..add('image_medium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageSmall;
    if (value != null) {
      result
        ..add('image_small')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageSource;
    if (value != null) {
      result
        ..add('image_source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageName;
    if (value != null) {
      result
        ..add('image_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gallery;
    if (value != null) {
      result
        ..add('gallery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(Galery)])));
    }
    value = object.shortUrl;
    if (value != null) {
      result
        ..add('short_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youtubeLink;
    if (value != null) {
      result
        ..add('youtube_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.expiredAt;
    if (value != null) {
      result
        ..add('expired_at')
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
  PostsResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
              specifiedType: const FullType(Category))! as Category);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'short_description':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'relates_to':
          result.relatesTo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author_offered':
          result.authorOffered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'publish':
          result.publish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_pinned':
          result.isPinned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'number_of_views':
          result.numberOfViews = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_extra_large':
          result.imageExtraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_large':
          result.imageLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_medium':
          result.imageMedium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_small':
          result.imageSmall = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_source':
          result.imageSource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_name':
          result.imageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gallery':
          result.gallery.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(Galery)]))!
              as BuiltList<Object?>);
          break;
        case 'short_url':
          result.shortUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youtube_link':
          result.youtubeLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'expired_at':
          result.expiredAt = serializers.deserialize(value,
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

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object?> serialize(Serializers serializers, Category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
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
    return result;
  }

  @override
  Category deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
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
      }
    }

    return result.build();
  }
}

class _$GalerySerializer implements StructuredSerializer<Galery> {
  @override
  final Iterable<Type> types = const [Galery, _$Galery];
  @override
  final String wireName = 'Galery';

  @override
  Iterable<Object?> serialize(Serializers serializers, Galery object,
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
  Galery deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GaleryBuilder();

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

class _$PostsResponse extends PostsResponse {
  @override
  final int id;
  @override
  final Category? category;
  @override
  final String? title;
  @override
  final String? shortDescription;
  @override
  final int? relatesTo;
  @override
  final String? description;
  @override
  final String? slug;
  @override
  final bool? authorOffered;
  @override
  final String? publish;
  @override
  final bool? isPinned;
  @override
  final int? numberOfViews;
  @override
  final String? image;
  @override
  final String? imageExtraLarge;
  @override
  final String? imageLarge;
  @override
  final String? imageMedium;
  @override
  final String? imageSmall;
  @override
  final String? imageSource;
  @override
  final String? imageName;
  @override
  final BuiltList<Galery?>? gallery;
  @override
  final String? shortUrl;
  @override
  final String? youtubeLink;
  @override
  final BuiltList<String?>? tags;
  @override
  final String? expiredAt;
  @override
  final String? language;

  factory _$PostsResponse([void Function(PostsResponseBuilder)? updates]) =>
      (new PostsResponseBuilder()..update(updates))._build();

  _$PostsResponse._(
      {required this.id,
      this.category,
      this.title,
      this.shortDescription,
      this.relatesTo,
      this.description,
      this.slug,
      this.authorOffered,
      this.publish,
      this.isPinned,
      this.numberOfViews,
      this.image,
      this.imageExtraLarge,
      this.imageLarge,
      this.imageMedium,
      this.imageSmall,
      this.imageSource,
      this.imageName,
      this.gallery,
      this.shortUrl,
      this.youtubeLink,
      this.tags,
      this.expiredAt,
      this.language})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PostsResponse', 'id');
  }

  @override
  PostsResponse rebuild(void Function(PostsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsResponseBuilder toBuilder() => new PostsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsResponse &&
        id == other.id &&
        category == other.category &&
        title == other.title &&
        shortDescription == other.shortDescription &&
        relatesTo == other.relatesTo &&
        description == other.description &&
        slug == other.slug &&
        authorOffered == other.authorOffered &&
        publish == other.publish &&
        isPinned == other.isPinned &&
        numberOfViews == other.numberOfViews &&
        image == other.image &&
        imageExtraLarge == other.imageExtraLarge &&
        imageLarge == other.imageLarge &&
        imageMedium == other.imageMedium &&
        imageSmall == other.imageSmall &&
        imageSource == other.imageSource &&
        imageName == other.imageName &&
        gallery == other.gallery &&
        shortUrl == other.shortUrl &&
        youtubeLink == other.youtubeLink &&
        tags == other.tags &&
        expiredAt == other.expiredAt &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, relatesTo.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, authorOffered.hashCode);
    _$hash = $jc(_$hash, publish.hashCode);
    _$hash = $jc(_$hash, isPinned.hashCode);
    _$hash = $jc(_$hash, numberOfViews.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, imageExtraLarge.hashCode);
    _$hash = $jc(_$hash, imageLarge.hashCode);
    _$hash = $jc(_$hash, imageMedium.hashCode);
    _$hash = $jc(_$hash, imageSmall.hashCode);
    _$hash = $jc(_$hash, imageSource.hashCode);
    _$hash = $jc(_$hash, imageName.hashCode);
    _$hash = $jc(_$hash, gallery.hashCode);
    _$hash = $jc(_$hash, shortUrl.hashCode);
    _$hash = $jc(_$hash, youtubeLink.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, expiredAt.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsResponse')
          ..add('id', id)
          ..add('category', category)
          ..add('title', title)
          ..add('shortDescription', shortDescription)
          ..add('relatesTo', relatesTo)
          ..add('description', description)
          ..add('slug', slug)
          ..add('authorOffered', authorOffered)
          ..add('publish', publish)
          ..add('isPinned', isPinned)
          ..add('numberOfViews', numberOfViews)
          ..add('image', image)
          ..add('imageExtraLarge', imageExtraLarge)
          ..add('imageLarge', imageLarge)
          ..add('imageMedium', imageMedium)
          ..add('imageSmall', imageSmall)
          ..add('imageSource', imageSource)
          ..add('imageName', imageName)
          ..add('gallery', gallery)
          ..add('shortUrl', shortUrl)
          ..add('youtubeLink', youtubeLink)
          ..add('tags', tags)
          ..add('expiredAt', expiredAt)
          ..add('language', language))
        .toString();
  }
}

class PostsResponseBuilder
    implements Builder<PostsResponse, PostsResponseBuilder> {
  _$PostsResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  CategoryBuilder? _category;
  CategoryBuilder get category => _$this._category ??= new CategoryBuilder();
  set category(CategoryBuilder? category) => _$this._category = category;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  int? _relatesTo;
  int? get relatesTo => _$this._relatesTo;
  set relatesTo(int? relatesTo) => _$this._relatesTo = relatesTo;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  bool? _authorOffered;
  bool? get authorOffered => _$this._authorOffered;
  set authorOffered(bool? authorOffered) =>
      _$this._authorOffered = authorOffered;

  String? _publish;
  String? get publish => _$this._publish;
  set publish(String? publish) => _$this._publish = publish;

  bool? _isPinned;
  bool? get isPinned => _$this._isPinned;
  set isPinned(bool? isPinned) => _$this._isPinned = isPinned;

  int? _numberOfViews;
  int? get numberOfViews => _$this._numberOfViews;
  set numberOfViews(int? numberOfViews) =>
      _$this._numberOfViews = numberOfViews;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _imageExtraLarge;
  String? get imageExtraLarge => _$this._imageExtraLarge;
  set imageExtraLarge(String? imageExtraLarge) =>
      _$this._imageExtraLarge = imageExtraLarge;

  String? _imageLarge;
  String? get imageLarge => _$this._imageLarge;
  set imageLarge(String? imageLarge) => _$this._imageLarge = imageLarge;

  String? _imageMedium;
  String? get imageMedium => _$this._imageMedium;
  set imageMedium(String? imageMedium) => _$this._imageMedium = imageMedium;

  String? _imageSmall;
  String? get imageSmall => _$this._imageSmall;
  set imageSmall(String? imageSmall) => _$this._imageSmall = imageSmall;

  String? _imageSource;
  String? get imageSource => _$this._imageSource;
  set imageSource(String? imageSource) => _$this._imageSource = imageSource;

  String? _imageName;
  String? get imageName => _$this._imageName;
  set imageName(String? imageName) => _$this._imageName = imageName;

  ListBuilder<Galery?>? _gallery;
  ListBuilder<Galery?> get gallery =>
      _$this._gallery ??= new ListBuilder<Galery?>();
  set gallery(ListBuilder<Galery?>? gallery) => _$this._gallery = gallery;

  String? _shortUrl;
  String? get shortUrl => _$this._shortUrl;
  set shortUrl(String? shortUrl) => _$this._shortUrl = shortUrl;

  String? _youtubeLink;
  String? get youtubeLink => _$this._youtubeLink;
  set youtubeLink(String? youtubeLink) => _$this._youtubeLink = youtubeLink;

  ListBuilder<String?>? _tags;
  ListBuilder<String?> get tags => _$this._tags ??= new ListBuilder<String?>();
  set tags(ListBuilder<String?>? tags) => _$this._tags = tags;

  String? _expiredAt;
  String? get expiredAt => _$this._expiredAt;
  set expiredAt(String? expiredAt) => _$this._expiredAt = expiredAt;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  PostsResponseBuilder();

  PostsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _category = $v.category?.toBuilder();
      _title = $v.title;
      _shortDescription = $v.shortDescription;
      _relatesTo = $v.relatesTo;
      _description = $v.description;
      _slug = $v.slug;
      _authorOffered = $v.authorOffered;
      _publish = $v.publish;
      _isPinned = $v.isPinned;
      _numberOfViews = $v.numberOfViews;
      _image = $v.image;
      _imageExtraLarge = $v.imageExtraLarge;
      _imageLarge = $v.imageLarge;
      _imageMedium = $v.imageMedium;
      _imageSmall = $v.imageSmall;
      _imageSource = $v.imageSource;
      _imageName = $v.imageName;
      _gallery = $v.gallery?.toBuilder();
      _shortUrl = $v.shortUrl;
      _youtubeLink = $v.youtubeLink;
      _tags = $v.tags?.toBuilder();
      _expiredAt = $v.expiredAt;
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsResponse;
  }

  @override
  void update(void Function(PostsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsResponse build() => _build();

  _$PostsResponse _build() {
    _$PostsResponse _$result;
    try {
      _$result = _$v ??
          new _$PostsResponse._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PostsResponse', 'id'),
              category: _category?.build(),
              title: title,
              shortDescription: shortDescription,
              relatesTo: relatesTo,
              description: description,
              slug: slug,
              authorOffered: authorOffered,
              publish: publish,
              isPinned: isPinned,
              numberOfViews: numberOfViews,
              image: image,
              imageExtraLarge: imageExtraLarge,
              imageLarge: imageLarge,
              imageMedium: imageMedium,
              imageSmall: imageSmall,
              imageSource: imageSource,
              imageName: imageName,
              gallery: _gallery?.build(),
              shortUrl: shortUrl,
              youtubeLink: youtubeLink,
              tags: _tags?.build(),
              expiredAt: expiredAt,
              language: language);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();

        _$failedField = 'gallery';
        _gallery?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Category extends Category {
  @override
  final int id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? color;

  factory _$Category([void Function(CategoryBuilder)? updates]) =>
      (new CategoryBuilder()..update(updates))._build();

  _$Category._({required this.id, this.name, this.slug, this.color})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Category', 'id');
  }

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Category')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('color', color))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  CategoryBuilder();

  CategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Category build() => _build();

  _$Category _build() {
    final _$result = _$v ??
        new _$Category._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Category', 'id'),
            name: name,
            slug: slug,
            color: color);
    replace(_$result);
    return _$result;
  }
}

class _$Galery extends Galery {
  @override
  final String? image;

  factory _$Galery([void Function(GaleryBuilder)? updates]) =>
      (new GaleryBuilder()..update(updates))._build();

  _$Galery._({this.image}) : super._();

  @override
  Galery rebuild(void Function(GaleryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaleryBuilder toBuilder() => new GaleryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Galery && image == other.image;
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
    return (newBuiltValueToStringHelper(r'Galery')..add('image', image))
        .toString();
  }
}

class GaleryBuilder implements Builder<Galery, GaleryBuilder> {
  _$Galery? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GaleryBuilder();

  GaleryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Galery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Galery;
  }

  @override
  void update(void Function(GaleryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Galery build() => _build();

  _$Galery _build() {
    final _$result = _$v ?? new _$Galery._(image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
