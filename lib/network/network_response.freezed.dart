// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Response<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(RequestException exception) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(RequestException exception)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(RequestException exception)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataResponse<T> value) data,
    required TResult Function(ExceptionResponse<T> value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataResponse<T> value)? data,
    TResult? Function(ExceptionResponse<T> value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataResponse<T> value)? data,
    TResult Function(ExceptionResponse<T> value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<T, $Res> {
  factory $ResponseCopyWith(
          Response<T> value, $Res Function(Response<T>) then) =
      _$ResponseCopyWithImpl<T, $Res, Response<T>>;
}

/// @nodoc
class _$ResponseCopyWithImpl<T, $Res, $Val extends Response<T>>
    implements $ResponseCopyWith<T, $Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataResponseImplCopyWith<T, $Res> {
  factory _$$DataResponseImplCopyWith(_$DataResponseImpl<T> value,
          $Res Function(_$DataResponseImpl<T>) then) =
      __$$DataResponseImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DataResponseImplCopyWithImpl<T, $Res>
    extends _$ResponseCopyWithImpl<T, $Res, _$DataResponseImpl<T>>
    implements _$$DataResponseImplCopyWith<T, $Res> {
  __$$DataResponseImplCopyWithImpl(
      _$DataResponseImpl<T> _value, $Res Function(_$DataResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataResponseImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataResponseImpl<T> extends DataResponse<T> {
  const _$DataResponseImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Response<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataResponseImplCopyWith<T, _$DataResponseImpl<T>> get copyWith =>
      __$$DataResponseImplCopyWithImpl<T, _$DataResponseImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(RequestException exception) exception,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(RequestException exception)? exception,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(RequestException exception)? exception,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataResponse<T> value) data,
    required TResult Function(ExceptionResponse<T> value) exception,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataResponse<T> value)? data,
    TResult? Function(ExceptionResponse<T> value)? exception,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataResponse<T> value)? data,
    TResult Function(ExceptionResponse<T> value)? exception,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataResponse<T> extends Response<T> {
  const factory DataResponse(final T data) = _$DataResponseImpl<T>;
  const DataResponse._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$DataResponseImplCopyWith<T, _$DataResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExceptionResponseImplCopyWith<T, $Res> {
  factory _$$ExceptionResponseImplCopyWith(_$ExceptionResponseImpl<T> value,
          $Res Function(_$ExceptionResponseImpl<T>) then) =
      __$$ExceptionResponseImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({RequestException exception});

  $RequestExceptionCopyWith<$Res> get exception;
}

/// @nodoc
class __$$ExceptionResponseImplCopyWithImpl<T, $Res>
    extends _$ResponseCopyWithImpl<T, $Res, _$ExceptionResponseImpl<T>>
    implements _$$ExceptionResponseImplCopyWith<T, $Res> {
  __$$ExceptionResponseImplCopyWithImpl(_$ExceptionResponseImpl<T> _value,
      $Res Function(_$ExceptionResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ExceptionResponseImpl<T>(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as RequestException,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestExceptionCopyWith<$Res> get exception {
    return $RequestExceptionCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc

class _$ExceptionResponseImpl<T> extends ExceptionResponse<T> {
  const _$ExceptionResponseImpl(this.exception) : super._();

  @override
  final RequestException exception;

  @override
  String toString() {
    return 'Response<$T>.exception(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceptionResponseImpl<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceptionResponseImplCopyWith<T, _$ExceptionResponseImpl<T>>
      get copyWith =>
          __$$ExceptionResponseImplCopyWithImpl<T, _$ExceptionResponseImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(RequestException exception) exception,
  }) {
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(RequestException exception)? exception,
  }) {
    return exception?.call(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(RequestException exception)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataResponse<T> value) data,
    required TResult Function(ExceptionResponse<T> value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataResponse<T> value)? data,
    TResult? Function(ExceptionResponse<T> value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataResponse<T> value)? data,
    TResult Function(ExceptionResponse<T> value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class ExceptionResponse<T> extends Response<T> {
  const factory ExceptionResponse(final RequestException exception) =
      _$ExceptionResponseImpl<T>;
  const ExceptionResponse._() : super._();

  RequestException get exception;
  @JsonKey(ignore: true)
  _$$ExceptionResponseImplCopyWith<T, _$ExceptionResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
