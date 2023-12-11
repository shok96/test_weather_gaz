// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_strategy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestStrategy {
  Map<String, dynamic>? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic json, Map<String, String>? query) post,
    required TResult Function(Map<String, dynamic>? query) get,
    required TResult Function(dynamic json, Map<String, dynamic>? query) put,
    required TResult Function(dynamic json, Map<String, dynamic>? query) delete,
    required TResult Function(dynamic json, Map<String, dynamic>? query) patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic json, Map<String, String>? query)? post,
    TResult? Function(Map<String, dynamic>? query)? get,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic json, Map<String, String>? query)? post,
    TResult Function(Map<String, dynamic>? query)? get,
    TResult Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult Function(dynamic json, Map<String, dynamic>? query)? patch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestStrategy value) post,
    required TResult Function(GetRequestStrategy value) get,
    required TResult Function(PutRequestStrategy value) put,
    required TResult Function(DeleteRequestStrategy value) delete,
    required TResult Function(PatchRequestStrategy value) patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostRequestStrategy value)? post,
    TResult? Function(GetRequestStrategy value)? get,
    TResult? Function(PutRequestStrategy value)? put,
    TResult? Function(DeleteRequestStrategy value)? delete,
    TResult? Function(PatchRequestStrategy value)? patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestStrategy value)? post,
    TResult Function(GetRequestStrategy value)? get,
    TResult Function(PutRequestStrategy value)? put,
    TResult Function(DeleteRequestStrategy value)? delete,
    TResult Function(PatchRequestStrategy value)? patch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStrategyCopyWith<$Res> {
  factory $RequestStrategyCopyWith(
          RequestStrategy value, $Res Function(RequestStrategy) then) =
      _$RequestStrategyCopyWithImpl<$Res, RequestStrategy>;
}

/// @nodoc
class _$RequestStrategyCopyWithImpl<$Res, $Val extends RequestStrategy>
    implements $RequestStrategyCopyWith<$Res> {
  _$RequestStrategyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostRequestStrategyImplCopyWith<$Res> {
  factory _$$PostRequestStrategyImplCopyWith(_$PostRequestStrategyImpl value,
          $Res Function(_$PostRequestStrategyImpl) then) =
      __$$PostRequestStrategyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic json, Map<String, String>? query});
}

/// @nodoc
class __$$PostRequestStrategyImplCopyWithImpl<$Res>
    extends _$RequestStrategyCopyWithImpl<$Res, _$PostRequestStrategyImpl>
    implements _$$PostRequestStrategyImplCopyWith<$Res> {
  __$$PostRequestStrategyImplCopyWithImpl(_$PostRequestStrategyImpl _value,
      $Res Function(_$PostRequestStrategyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = freezed,
    Object? query = freezed,
  }) {
    return _then(_$PostRequestStrategyImpl(
      json: freezed == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as dynamic,
      query: freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$PostRequestStrategyImpl implements PostRequestStrategy {
  const _$PostRequestStrategyImpl({this.json, final Map<String, String>? query})
      : _query = query;

  @override
  final dynamic json;
  final Map<String, String>? _query;
  @override
  Map<String, String>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestStrategy.post(json: $json, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostRequestStrategyImpl &&
            const DeepCollectionEquality().equals(other.json, json) &&
            const DeepCollectionEquality().equals(other._query, _query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(json),
      const DeepCollectionEquality().hash(_query));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostRequestStrategyImplCopyWith<_$PostRequestStrategyImpl> get copyWith =>
      __$$PostRequestStrategyImplCopyWithImpl<_$PostRequestStrategyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic json, Map<String, String>? query) post,
    required TResult Function(Map<String, dynamic>? query) get,
    required TResult Function(dynamic json, Map<String, dynamic>? query) put,
    required TResult Function(dynamic json, Map<String, dynamic>? query) delete,
    required TResult Function(dynamic json, Map<String, dynamic>? query) patch,
  }) {
    return post(json, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic json, Map<String, String>? query)? post,
    TResult? Function(Map<String, dynamic>? query)? get,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? patch,
  }) {
    return post?.call(json, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic json, Map<String, String>? query)? post,
    TResult Function(Map<String, dynamic>? query)? get,
    TResult Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult Function(dynamic json, Map<String, dynamic>? query)? patch,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(json, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestStrategy value) post,
    required TResult Function(GetRequestStrategy value) get,
    required TResult Function(PutRequestStrategy value) put,
    required TResult Function(DeleteRequestStrategy value) delete,
    required TResult Function(PatchRequestStrategy value) patch,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostRequestStrategy value)? post,
    TResult? Function(GetRequestStrategy value)? get,
    TResult? Function(PutRequestStrategy value)? put,
    TResult? Function(DeleteRequestStrategy value)? delete,
    TResult? Function(PatchRequestStrategy value)? patch,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestStrategy value)? post,
    TResult Function(GetRequestStrategy value)? get,
    TResult Function(PutRequestStrategy value)? put,
    TResult Function(DeleteRequestStrategy value)? delete,
    TResult Function(PatchRequestStrategy value)? patch,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class PostRequestStrategy implements RequestStrategy {
  const factory PostRequestStrategy(
      {final dynamic json,
      final Map<String, String>? query}) = _$PostRequestStrategyImpl;

  dynamic get json;
  @override
  Map<String, String>? get query;
  @JsonKey(ignore: true)
  _$$PostRequestStrategyImplCopyWith<_$PostRequestStrategyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRequestStrategyImplCopyWith<$Res> {
  factory _$$GetRequestStrategyImplCopyWith(_$GetRequestStrategyImpl value,
          $Res Function(_$GetRequestStrategyImpl) then) =
      __$$GetRequestStrategyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic>? query});
}

/// @nodoc
class __$$GetRequestStrategyImplCopyWithImpl<$Res>
    extends _$RequestStrategyCopyWithImpl<$Res, _$GetRequestStrategyImpl>
    implements _$$GetRequestStrategyImplCopyWith<$Res> {
  __$$GetRequestStrategyImplCopyWithImpl(_$GetRequestStrategyImpl _value,
      $Res Function(_$GetRequestStrategyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$GetRequestStrategyImpl(
      freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$GetRequestStrategyImpl implements GetRequestStrategy {
  const _$GetRequestStrategyImpl(final Map<String, dynamic>? query)
      : _query = query;

  final Map<String, dynamic>? _query;
  @override
  Map<String, dynamic>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestStrategy.get(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRequestStrategyImpl &&
            const DeepCollectionEquality().equals(other._query, _query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_query));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRequestStrategyImplCopyWith<_$GetRequestStrategyImpl> get copyWith =>
      __$$GetRequestStrategyImplCopyWithImpl<_$GetRequestStrategyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic json, Map<String, String>? query) post,
    required TResult Function(Map<String, dynamic>? query) get,
    required TResult Function(dynamic json, Map<String, dynamic>? query) put,
    required TResult Function(dynamic json, Map<String, dynamic>? query) delete,
    required TResult Function(dynamic json, Map<String, dynamic>? query) patch,
  }) {
    return get(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic json, Map<String, String>? query)? post,
    TResult? Function(Map<String, dynamic>? query)? get,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? patch,
  }) {
    return get?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic json, Map<String, String>? query)? post,
    TResult Function(Map<String, dynamic>? query)? get,
    TResult Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult Function(dynamic json, Map<String, dynamic>? query)? patch,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestStrategy value) post,
    required TResult Function(GetRequestStrategy value) get,
    required TResult Function(PutRequestStrategy value) put,
    required TResult Function(DeleteRequestStrategy value) delete,
    required TResult Function(PatchRequestStrategy value) patch,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostRequestStrategy value)? post,
    TResult? Function(GetRequestStrategy value)? get,
    TResult? Function(PutRequestStrategy value)? put,
    TResult? Function(DeleteRequestStrategy value)? delete,
    TResult? Function(PatchRequestStrategy value)? patch,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestStrategy value)? post,
    TResult Function(GetRequestStrategy value)? get,
    TResult Function(PutRequestStrategy value)? put,
    TResult Function(DeleteRequestStrategy value)? delete,
    TResult Function(PatchRequestStrategy value)? patch,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class GetRequestStrategy implements RequestStrategy {
  const factory GetRequestStrategy(final Map<String, dynamic>? query) =
      _$GetRequestStrategyImpl;

  @override
  Map<String, dynamic>? get query;
  @JsonKey(ignore: true)
  _$$GetRequestStrategyImplCopyWith<_$GetRequestStrategyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutRequestStrategyImplCopyWith<$Res> {
  factory _$$PutRequestStrategyImplCopyWith(_$PutRequestStrategyImpl value,
          $Res Function(_$PutRequestStrategyImpl) then) =
      __$$PutRequestStrategyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic json, Map<String, dynamic>? query});
}

/// @nodoc
class __$$PutRequestStrategyImplCopyWithImpl<$Res>
    extends _$RequestStrategyCopyWithImpl<$Res, _$PutRequestStrategyImpl>
    implements _$$PutRequestStrategyImplCopyWith<$Res> {
  __$$PutRequestStrategyImplCopyWithImpl(_$PutRequestStrategyImpl _value,
      $Res Function(_$PutRequestStrategyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = freezed,
    Object? query = freezed,
  }) {
    return _then(_$PutRequestStrategyImpl(
      freezed == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$PutRequestStrategyImpl implements PutRequestStrategy {
  const _$PutRequestStrategyImpl(this.json, final Map<String, dynamic>? query)
      : _query = query;

  @override
  final dynamic json;
  final Map<String, dynamic>? _query;
  @override
  Map<String, dynamic>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestStrategy.put(json: $json, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutRequestStrategyImpl &&
            const DeepCollectionEquality().equals(other.json, json) &&
            const DeepCollectionEquality().equals(other._query, _query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(json),
      const DeepCollectionEquality().hash(_query));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PutRequestStrategyImplCopyWith<_$PutRequestStrategyImpl> get copyWith =>
      __$$PutRequestStrategyImplCopyWithImpl<_$PutRequestStrategyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic json, Map<String, String>? query) post,
    required TResult Function(Map<String, dynamic>? query) get,
    required TResult Function(dynamic json, Map<String, dynamic>? query) put,
    required TResult Function(dynamic json, Map<String, dynamic>? query) delete,
    required TResult Function(dynamic json, Map<String, dynamic>? query) patch,
  }) {
    return put(json, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic json, Map<String, String>? query)? post,
    TResult? Function(Map<String, dynamic>? query)? get,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? patch,
  }) {
    return put?.call(json, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic json, Map<String, String>? query)? post,
    TResult Function(Map<String, dynamic>? query)? get,
    TResult Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult Function(dynamic json, Map<String, dynamic>? query)? patch,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(json, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestStrategy value) post,
    required TResult Function(GetRequestStrategy value) get,
    required TResult Function(PutRequestStrategy value) put,
    required TResult Function(DeleteRequestStrategy value) delete,
    required TResult Function(PatchRequestStrategy value) patch,
  }) {
    return put(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostRequestStrategy value)? post,
    TResult? Function(GetRequestStrategy value)? get,
    TResult? Function(PutRequestStrategy value)? put,
    TResult? Function(DeleteRequestStrategy value)? delete,
    TResult? Function(PatchRequestStrategy value)? patch,
  }) {
    return put?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestStrategy value)? post,
    TResult Function(GetRequestStrategy value)? get,
    TResult Function(PutRequestStrategy value)? put,
    TResult Function(DeleteRequestStrategy value)? delete,
    TResult Function(PatchRequestStrategy value)? patch,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(this);
    }
    return orElse();
  }
}

abstract class PutRequestStrategy implements RequestStrategy {
  const factory PutRequestStrategy(
          final dynamic json, final Map<String, dynamic>? query) =
      _$PutRequestStrategyImpl;

  dynamic get json;
  @override
  Map<String, dynamic>? get query;
  @JsonKey(ignore: true)
  _$$PutRequestStrategyImplCopyWith<_$PutRequestStrategyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRequestStrategyImplCopyWith<$Res> {
  factory _$$DeleteRequestStrategyImplCopyWith(
          _$DeleteRequestStrategyImpl value,
          $Res Function(_$DeleteRequestStrategyImpl) then) =
      __$$DeleteRequestStrategyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic json, Map<String, dynamic>? query});
}

/// @nodoc
class __$$DeleteRequestStrategyImplCopyWithImpl<$Res>
    extends _$RequestStrategyCopyWithImpl<$Res, _$DeleteRequestStrategyImpl>
    implements _$$DeleteRequestStrategyImplCopyWith<$Res> {
  __$$DeleteRequestStrategyImplCopyWithImpl(_$DeleteRequestStrategyImpl _value,
      $Res Function(_$DeleteRequestStrategyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = freezed,
    Object? query = freezed,
  }) {
    return _then(_$DeleteRequestStrategyImpl(
      json: freezed == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as dynamic,
      query: freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$DeleteRequestStrategyImpl implements DeleteRequestStrategy {
  const _$DeleteRequestStrategyImpl(
      {this.json, final Map<String, dynamic>? query})
      : _query = query;

  @override
  final dynamic json;
  final Map<String, dynamic>? _query;
  @override
  Map<String, dynamic>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestStrategy.delete(json: $json, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRequestStrategyImpl &&
            const DeepCollectionEquality().equals(other.json, json) &&
            const DeepCollectionEquality().equals(other._query, _query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(json),
      const DeepCollectionEquality().hash(_query));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRequestStrategyImplCopyWith<_$DeleteRequestStrategyImpl>
      get copyWith => __$$DeleteRequestStrategyImplCopyWithImpl<
          _$DeleteRequestStrategyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic json, Map<String, String>? query) post,
    required TResult Function(Map<String, dynamic>? query) get,
    required TResult Function(dynamic json, Map<String, dynamic>? query) put,
    required TResult Function(dynamic json, Map<String, dynamic>? query) delete,
    required TResult Function(dynamic json, Map<String, dynamic>? query) patch,
  }) {
    return delete(json, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic json, Map<String, String>? query)? post,
    TResult? Function(Map<String, dynamic>? query)? get,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? patch,
  }) {
    return delete?.call(json, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic json, Map<String, String>? query)? post,
    TResult Function(Map<String, dynamic>? query)? get,
    TResult Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult Function(dynamic json, Map<String, dynamic>? query)? patch,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(json, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestStrategy value) post,
    required TResult Function(GetRequestStrategy value) get,
    required TResult Function(PutRequestStrategy value) put,
    required TResult Function(DeleteRequestStrategy value) delete,
    required TResult Function(PatchRequestStrategy value) patch,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostRequestStrategy value)? post,
    TResult? Function(GetRequestStrategy value)? get,
    TResult? Function(PutRequestStrategy value)? put,
    TResult? Function(DeleteRequestStrategy value)? delete,
    TResult? Function(PatchRequestStrategy value)? patch,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestStrategy value)? post,
    TResult Function(GetRequestStrategy value)? get,
    TResult Function(PutRequestStrategy value)? put,
    TResult Function(DeleteRequestStrategy value)? delete,
    TResult Function(PatchRequestStrategy value)? patch,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteRequestStrategy implements RequestStrategy {
  const factory DeleteRequestStrategy(
      {final dynamic json,
      final Map<String, dynamic>? query}) = _$DeleteRequestStrategyImpl;

  dynamic get json;
  @override
  Map<String, dynamic>? get query;
  @JsonKey(ignore: true)
  _$$DeleteRequestStrategyImplCopyWith<_$DeleteRequestStrategyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PatchRequestStrategyImplCopyWith<$Res> {
  factory _$$PatchRequestStrategyImplCopyWith(_$PatchRequestStrategyImpl value,
          $Res Function(_$PatchRequestStrategyImpl) then) =
      __$$PatchRequestStrategyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic json, Map<String, dynamic>? query});
}

/// @nodoc
class __$$PatchRequestStrategyImplCopyWithImpl<$Res>
    extends _$RequestStrategyCopyWithImpl<$Res, _$PatchRequestStrategyImpl>
    implements _$$PatchRequestStrategyImplCopyWith<$Res> {
  __$$PatchRequestStrategyImplCopyWithImpl(_$PatchRequestStrategyImpl _value,
      $Res Function(_$PatchRequestStrategyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = freezed,
    Object? query = freezed,
  }) {
    return _then(_$PatchRequestStrategyImpl(
      json: freezed == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as dynamic,
      query: freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$PatchRequestStrategyImpl implements PatchRequestStrategy {
  const _$PatchRequestStrategyImpl(
      {this.json, final Map<String, dynamic>? query})
      : _query = query;

  @override
  final dynamic json;
  final Map<String, dynamic>? _query;
  @override
  Map<String, dynamic>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestStrategy.patch(json: $json, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchRequestStrategyImpl &&
            const DeepCollectionEquality().equals(other.json, json) &&
            const DeepCollectionEquality().equals(other._query, _query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(json),
      const DeepCollectionEquality().hash(_query));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchRequestStrategyImplCopyWith<_$PatchRequestStrategyImpl>
      get copyWith =>
          __$$PatchRequestStrategyImplCopyWithImpl<_$PatchRequestStrategyImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic json, Map<String, String>? query) post,
    required TResult Function(Map<String, dynamic>? query) get,
    required TResult Function(dynamic json, Map<String, dynamic>? query) put,
    required TResult Function(dynamic json, Map<String, dynamic>? query) delete,
    required TResult Function(dynamic json, Map<String, dynamic>? query) patch,
  }) {
    return patch(json, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic json, Map<String, String>? query)? post,
    TResult? Function(Map<String, dynamic>? query)? get,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult? Function(dynamic json, Map<String, dynamic>? query)? patch,
  }) {
    return patch?.call(json, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic json, Map<String, String>? query)? post,
    TResult Function(Map<String, dynamic>? query)? get,
    TResult Function(dynamic json, Map<String, dynamic>? query)? put,
    TResult Function(dynamic json, Map<String, dynamic>? query)? delete,
    TResult Function(dynamic json, Map<String, dynamic>? query)? patch,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(json, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestStrategy value) post,
    required TResult Function(GetRequestStrategy value) get,
    required TResult Function(PutRequestStrategy value) put,
    required TResult Function(DeleteRequestStrategy value) delete,
    required TResult Function(PatchRequestStrategy value) patch,
  }) {
    return patch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostRequestStrategy value)? post,
    TResult? Function(GetRequestStrategy value)? get,
    TResult? Function(PutRequestStrategy value)? put,
    TResult? Function(DeleteRequestStrategy value)? delete,
    TResult? Function(PatchRequestStrategy value)? patch,
  }) {
    return patch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestStrategy value)? post,
    TResult Function(GetRequestStrategy value)? get,
    TResult Function(PutRequestStrategy value)? put,
    TResult Function(DeleteRequestStrategy value)? delete,
    TResult Function(PatchRequestStrategy value)? patch,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(this);
    }
    return orElse();
  }
}

abstract class PatchRequestStrategy implements RequestStrategy {
  const factory PatchRequestStrategy(
      {final dynamic json,
      final Map<String, dynamic>? query}) = _$PatchRequestStrategyImpl;

  dynamic get json;
  @override
  Map<String, dynamic>? get query;
  @JsonKey(ignore: true)
  _$$PatchRequestStrategyImplCopyWith<_$PatchRequestStrategyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
