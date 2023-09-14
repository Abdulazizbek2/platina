// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articless.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Articless> _$articlessSerializer = new _$ArticlessSerializer();

class _$ArticlessSerializer implements StructuredSerializer<Articless> {
  @override
  final Iterable<Type> types = const [Articless, _$Articless];
  @override
  final String wireName = 'Articless';

  @override
  Iterable<Object?> serialize(Serializers serializers, Articless object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(PostsResponse)])));
    }
    return result;
  }

  @override
  Articless deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticlessBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(PostsResponse)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Articless extends Articless {
  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<PostsResponse?>? results;

  factory _$Articless([void Function(ArticlessBuilder)? updates]) =>
      (new ArticlessBuilder()..update(updates))._build();

  _$Articless._({this.count, this.next, this.previous, this.results})
      : super._();

  @override
  Articless rebuild(void Function(ArticlessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticlessBuilder toBuilder() => new ArticlessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Articless &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Articless')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class ArticlessBuilder implements Builder<Articless, ArticlessBuilder> {
  _$Articless? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<PostsResponse?>? _results;
  ListBuilder<PostsResponse?> get results =>
      _$this._results ??= new ListBuilder<PostsResponse?>();
  set results(ListBuilder<PostsResponse?>? results) =>
      _$this._results = results;

  ArticlessBuilder();

  ArticlessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Articless other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Articless;
  }

  @override
  void update(void Function(ArticlessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Articless build() => _build();

  _$Articless _build() {
    _$Articless _$result;
    try {
      _$result = _$v ??
          new _$Articless._(
              count: count,
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Articless', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
