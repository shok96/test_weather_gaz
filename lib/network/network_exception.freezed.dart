// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() authFailed,
    required TResult Function() accessDenied,
    required TResult Function() networkFailure,
    required TResult Function() notFound,
    required TResult Function(Map<String, dynamic>? message) badRequest,
    required TResult Function() tryCatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? authFailed,
    TResult? Function()? accessDenied,
    TResult? Function()? networkFailure,
    TResult? Function()? notFound,
    TResult? Function(Map<String, dynamic>? message)? badRequest,
    TResult? Function()? tryCatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? authFailed,
    TResult Function()? accessDenied,
    TResult Function()? networkFailure,
    TResult Function()? notFound,
    TResult Function(Map<String, dynamic>? message)? badRequest,
    TResult Function()? tryCatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorRequestException value) serverError,
    required TResult Function(AuthFailedRequestException value) authFailed,
    required TResult Function(AccessDeniedRequestException value) accessDenied,
    required TResult Function(NetworkFailureRequestException value)
        networkFailure,
    required TResult Function(NotFoundRequestException value) notFound,
    required TResult Function(BadRequestRequestException value) badRequest,
    required TResult Function(TryCatchRequestException value) tryCatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorRequestException value)? serverError,
    TResult? Function(AuthFailedRequestException value)? authFailed,
    TResult? Function(AccessDeniedRequestException value)? accessDenied,
    TResult? Function(NetworkFailureRequestException value)? networkFailure,
    TResult? Function(NotFoundRequestException value)? notFound,
    TResult? Function(BadRequestRequestException value)? badRequest,
    TResult? Function(TryCatchRequestException value)? tryCatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorRequestException value)? serverError,
    TResult Function(AuthFailedRequestException value)? authFailed,
    TResult Function(AccessDeniedRequestException value)? accessDenied,
    TResult Function(NetworkFailureRequestException value)? networkFailure,
    TResult Function(NotFoundRequestException value)? notFound,
    TResult Function(BadRequestRequestException value)? badRequest,
    TResult Function(TryCatchRequestException value)? tryCatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestExceptionCopyWith<$Res> {
  factory $RequestExceptionCopyWith(
          RequestException value, $Res Function(RequestException) then) =
      _$RequestExceptionCopyWithImpl<$Res, RequestException>;
}

/// @nodoc
class _$RequestExceptionCopyWithImpl<$Res, $Val extends RequestException>
    implements $RequestExceptionCopyWith<$Res> {
  _$RequestExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorRequestExceptionImplCopyWith<$Res> {
  factory _$$ServerErrorRequestExceptionImplCopyWith(
          _$ServerErrorRequestExceptionImpl value,
          $Res Function(_$ServerErrorRequestExceptionImpl) then) =
      __$$ServerErrorRequestExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorRequestExceptionImplCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res,
        _$ServerErrorRequestExceptionImpl>
    implements _$$ServerErrorRequestExceptionImplCopyWith<$Res> {
  __$$ServerErrorRequestExceptionImplCopyWithImpl(
      _$ServerErrorRequestExceptionImpl _value,
      $Res Function(_$ServerErrorRequestExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorRequestExceptionImpl implements ServerErrorRequestException {
  const _$ServerErrorRequestExceptionImpl();

  @override
  String toString() {
    return 'RequestException.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorRequestExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() authFailed,
    required TResult Function() accessDenied,
    required TResult Function() networkFailure,
    required TResult Function() notFound,
    required TResult Function(Map<String, dynamic>? message) badRequest,
    required TResult Function() tryCatch,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? authFailed,
    TResult? Function()? accessDenied,
    TResult? Function()? networkFailure,
    TResult? Function()? notFound,
    TResult? Function(Map<String, dynamic>? message)? badRequest,
    TResult? Function()? tryCatch,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? authFailed,
    TResult Function()? accessDenied,
    TResult Function()? networkFailure,
    TResult Function()? notFound,
    TResult Function(Map<String, dynamic>? message)? badRequest,
    TResult Function()? tryCatch,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorRequestException value) serverError,
    required TResult Function(AuthFailedRequestException value) authFailed,
    required TResult Function(AccessDeniedRequestException value) accessDenied,
    required TResult Function(NetworkFailureRequestException value)
        networkFailure,
    required TResult Function(NotFoundRequestException value) notFound,
    required TResult Function(BadRequestRequestException value) badRequest,
    required TResult Function(TryCatchRequestException value) tryCatch,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorRequestException value)? serverError,
    TResult? Function(AuthFailedRequestException value)? authFailed,
    TResult? Function(AccessDeniedRequestException value)? accessDenied,
    TResult? Function(NetworkFailureRequestException value)? networkFailure,
    TResult? Function(NotFoundRequestException value)? notFound,
    TResult? Function(BadRequestRequestException value)? badRequest,
    TResult? Function(TryCatchRequestException value)? tryCatch,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorRequestException value)? serverError,
    TResult Function(AuthFailedRequestException value)? authFailed,
    TResult Function(AccessDeniedRequestException value)? accessDenied,
    TResult Function(NetworkFailureRequestException value)? networkFailure,
    TResult Function(NotFoundRequestException value)? notFound,
    TResult Function(BadRequestRequestException value)? badRequest,
    TResult Function(TryCatchRequestException value)? tryCatch,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerErrorRequestException implements RequestException {
  const factory ServerErrorRequestException() =
      _$ServerErrorRequestExceptionImpl;
}

/// @nodoc
abstract class _$$AuthFailedRequestExceptionImplCopyWith<$Res> {
  factory _$$AuthFailedRequestExceptionImplCopyWith(
          _$AuthFailedRequestExceptionImpl value,
          $Res Function(_$AuthFailedRequestExceptionImpl) then) =
      __$$AuthFailedRequestExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthFailedRequestExceptionImplCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res,
        _$AuthFailedRequestExceptionImpl>
    implements _$$AuthFailedRequestExceptionImplCopyWith<$Res> {
  __$$AuthFailedRequestExceptionImplCopyWithImpl(
      _$AuthFailedRequestExceptionImpl _value,
      $Res Function(_$AuthFailedRequestExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthFailedRequestExceptionImpl implements AuthFailedRequestException {
  const _$AuthFailedRequestExceptionImpl();

  @override
  String toString() {
    return 'RequestException.authFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailedRequestExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() authFailed,
    required TResult Function() accessDenied,
    required TResult Function() networkFailure,
    required TResult Function() notFound,
    required TResult Function(Map<String, dynamic>? message) badRequest,
    required TResult Function() tryCatch,
  }) {
    return authFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? authFailed,
    TResult? Function()? accessDenied,
    TResult? Function()? networkFailure,
    TResult? Function()? notFound,
    TResult? Function(Map<String, dynamic>? message)? badRequest,
    TResult? Function()? tryCatch,
  }) {
    return authFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? authFailed,
    TResult Function()? accessDenied,
    TResult Function()? networkFailure,
    TResult Function()? notFound,
    TResult Function(Map<String, dynamic>? message)? badRequest,
    TResult Function()? tryCatch,
    required TResult orElse(),
  }) {
    if (authFailed != null) {
      return authFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorRequestException value) serverError,
    required TResult Function(AuthFailedRequestException value) authFailed,
    required TResult Function(AccessDeniedRequestException value) accessDenied,
    required TResult Function(NetworkFailureRequestException value)
        networkFailure,
    required TResult Function(NotFoundRequestException value) notFound,
    required TResult Function(BadRequestRequestException value) badRequest,
    required TResult Function(TryCatchRequestException value) tryCatch,
  }) {
    return authFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorRequestException value)? serverError,
    TResult? Function(AuthFailedRequestException value)? authFailed,
    TResult? Function(AccessDeniedRequestException value)? accessDenied,
    TResult? Function(NetworkFailureRequestException value)? networkFailure,
    TResult? Function(NotFoundRequestException value)? notFound,
    TResult? Function(BadRequestRequestException value)? badRequest,
    TResult? Function(TryCatchRequestException value)? tryCatch,
  }) {
    return authFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorRequestException value)? serverError,
    TResult Function(AuthFailedRequestException value)? authFailed,
    TResult Function(AccessDeniedRequestException value)? accessDenied,
    TResult Function(NetworkFailureRequestException value)? networkFailure,
    TResult Function(NotFoundRequestException value)? notFound,
    TResult Function(BadRequestRequestException value)? badRequest,
    TResult Function(TryCatchRequestException value)? tryCatch,
    required TResult orElse(),
  }) {
    if (authFailed != null) {
      return authFailed(this);
    }
    return orElse();
  }
}

abstract class AuthFailedRequestException implements RequestException {
  const factory AuthFailedRequestException() = _$AuthFailedRequestExceptionImpl;
}

/// @nodoc
abstract class _$$AccessDeniedRequestExceptionImplCopyWith<$Res> {
  factory _$$AccessDeniedRequestExceptionImplCopyWith(
          _$AccessDeniedRequestExceptionImpl value,
          $Res Function(_$AccessDeniedRequestExceptionImpl) then) =
      __$$AccessDeniedRequestExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccessDeniedRequestExceptionImplCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res,
        _$AccessDeniedRequestExceptionImpl>
    implements _$$AccessDeniedRequestExceptionImplCopyWith<$Res> {
  __$$AccessDeniedRequestExceptionImplCopyWithImpl(
      _$AccessDeniedRequestExceptionImpl _value,
      $Res Function(_$AccessDeniedRequestExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccessDeniedRequestExceptionImpl
    implements AccessDeniedRequestException {
  const _$AccessDeniedRequestExceptionImpl();

  @override
  String toString() {
    return 'RequestException.accessDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessDeniedRequestExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() authFailed,
    required TResult Function() accessDenied,
    required TResult Function() networkFailure,
    required TResult Function() notFound,
    required TResult Function(Map<String, dynamic>? message) badRequest,
    required TResult Function() tryCatch,
  }) {
    return accessDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? authFailed,
    TResult? Function()? accessDenied,
    TResult? Function()? networkFailure,
    TResult? Function()? notFound,
    TResult? Function(Map<String, dynamic>? message)? badRequest,
    TResult? Function()? tryCatch,
  }) {
    return accessDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? authFailed,
    TResult Function()? accessDenied,
    TResult Function()? networkFailure,
    TResult Function()? notFound,
    TResult Function(Map<String, dynamic>? message)? badRequest,
    TResult Function()? tryCatch,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorRequestException value) serverError,
    required TResult Function(AuthFailedRequestException value) authFailed,
    required TResult Function(AccessDeniedRequestException value) accessDenied,
    required TResult Function(NetworkFailureRequestException value)
        networkFailure,
    required TResult Function(NotFoundRequestException value) notFound,
    required TResult Function(BadRequestRequestException value) badRequest,
    required TResult Function(TryCatchRequestException value) tryCatch,
  }) {
    return accessDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorRequestException value)? serverError,
    TResult? Function(AuthFailedRequestException value)? authFailed,
    TResult? Function(AccessDeniedRequestException value)? accessDenied,
    TResult? Function(NetworkFailureRequestException value)? networkFailure,
    TResult? Function(NotFoundRequestException value)? notFound,
    TResult? Function(BadRequestRequestException value)? badRequest,
    TResult? Function(TryCatchRequestException value)? tryCatch,
  }) {
    return accessDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorRequestException value)? serverError,
    TResult Function(AuthFailedRequestException value)? authFailed,
    TResult Function(AccessDeniedRequestException value)? accessDenied,
    TResult Function(NetworkFailureRequestException value)? networkFailure,
    TResult Function(NotFoundRequestException value)? notFound,
    TResult Function(BadRequestRequestException value)? badRequest,
    TResult Function(TryCatchRequestException value)? tryCatch,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied(this);
    }
    return orElse();
  }
}

abstract class AccessDeniedRequestException implements RequestException {
  const factory AccessDeniedRequestException() =
      _$AccessDeniedRequestExceptionImpl;
}

/// @nodoc
abstract class _$$NetworkFailureRequestExceptionImplCopyWith<$Res> {
  factory _$$NetworkFailureRequestExceptionImplCopyWith(
          _$NetworkFailureRequestExceptionImpl value,
          $Res Function(_$NetworkFailureRequestExceptionImpl) then) =
      __$$NetworkFailureRequestExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkFailureRequestExceptionImplCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res,
        _$NetworkFailureRequestExceptionImpl>
    implements _$$NetworkFailureRequestExceptionImplCopyWith<$Res> {
  __$$NetworkFailureRequestExceptionImplCopyWithImpl(
      _$NetworkFailureRequestExceptionImpl _value,
      $Res Function(_$NetworkFailureRequestExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkFailureRequestExceptionImpl
    implements NetworkFailureRequestException {
  const _$NetworkFailureRequestExceptionImpl();

  @override
  String toString() {
    return 'RequestException.networkFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureRequestExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() authFailed,
    required TResult Function() accessDenied,
    required TResult Function() networkFailure,
    required TResult Function() notFound,
    required TResult Function(Map<String, dynamic>? message) badRequest,
    required TResult Function() tryCatch,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? authFailed,
    TResult? Function()? accessDenied,
    TResult? Function()? networkFailure,
    TResult? Function()? notFound,
    TResult? Function(Map<String, dynamic>? message)? badRequest,
    TResult? Function()? tryCatch,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? authFailed,
    TResult Function()? accessDenied,
    TResult Function()? networkFailure,
    TResult Function()? notFound,
    TResult Function(Map<String, dynamic>? message)? badRequest,
    TResult Function()? tryCatch,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorRequestException value) serverError,
    required TResult Function(AuthFailedRequestException value) authFailed,
    required TResult Function(AccessDeniedRequestException value) accessDenied,
    required TResult Function(NetworkFailureRequestException value)
        networkFailure,
    required TResult Function(NotFoundRequestException value) notFound,
    required TResult Function(BadRequestRequestException value) badRequest,
    required TResult Function(TryCatchRequestException value) tryCatch,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorRequestException value)? serverError,
    TResult? Function(AuthFailedRequestException value)? authFailed,
    TResult? Function(AccessDeniedRequestException value)? accessDenied,
    TResult? Function(NetworkFailureRequestException value)? networkFailure,
    TResult? Function(NotFoundRequestException value)? notFound,
    TResult? Function(BadRequestRequestException value)? badRequest,
    TResult? Function(TryCatchRequestException value)? tryCatch,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorRequestException value)? serverError,
    TResult Function(AuthFailedRequestException value)? authFailed,
    TResult Function(AccessDeniedRequestException value)? accessDenied,
    TResult Function(NetworkFailureRequestException value)? networkFailure,
    TResult Function(NotFoundRequestException value)? notFound,
    TResult Function(BadRequestRequestException value)? badRequest,
    TResult Function(TryCatchRequestException value)? tryCatch,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailureRequestException implements RequestException {
  const factory NetworkFailureRequestException() =
      _$NetworkFailureRequestExceptionImpl;
}

/// @nodoc
abstract class _$$NotFoundRequestExceptionImplCopyWith<$Res> {
  factory _$$NotFoundRequestExceptionImplCopyWith(
          _$NotFoundRequestExceptionImpl value,
          $Res Function(_$NotFoundRequestExceptionImpl) then) =
      __$$NotFoundRequestExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundRequestExceptionImplCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res, _$NotFoundRequestExceptionImpl>
    implements _$$NotFoundRequestExceptionImplCopyWith<$Res> {
  __$$NotFoundRequestExceptionImplCopyWithImpl(
      _$NotFoundRequestExceptionImpl _value,
      $Res Function(_$NotFoundRequestExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundRequestExceptionImpl implements NotFoundRequestException {
  const _$NotFoundRequestExceptionImpl();

  @override
  String toString() {
    return 'RequestException.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundRequestExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() authFailed,
    required TResult Function() accessDenied,
    required TResult Function() networkFailure,
    required TResult Function() notFound,
    required TResult Function(Map<String, dynamic>? message) badRequest,
    required TResult Function() tryCatch,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? authFailed,
    TResult? Function()? accessDenied,
    TResult? Function()? networkFailure,
    TResult? Function()? notFound,
    TResult? Function(Map<String, dynamic>? message)? badRequest,
    TResult? Function()? tryCatch,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? authFailed,
    TResult Function()? accessDenied,
    TResult Function()? networkFailure,
    TResult Function()? notFound,
    TResult Function(Map<String, dynamic>? message)? badRequest,
    TResult Function()? tryCatch,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorRequestException value) serverError,
    required TResult Function(AuthFailedRequestException value) authFailed,
    required TResult Function(AccessDeniedRequestException value) accessDenied,
    required TResult Function(NetworkFailureRequestException value)
        networkFailure,
    required TResult Function(NotFoundRequestException value) notFound,
    required TResult Function(BadRequestRequestException value) badRequest,
    required TResult Function(TryCatchRequestException value) tryCatch,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorRequestException value)? serverError,
    TResult? Function(AuthFailedRequestException value)? authFailed,
    TResult? Function(AccessDeniedRequestException value)? accessDenied,
    TResult? Function(NetworkFailureRequestException value)? networkFailure,
    TResult? Function(NotFoundRequestException value)? notFound,
    TResult? Function(BadRequestRequestException value)? badRequest,
    TResult? Function(TryCatchRequestException value)? tryCatch,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorRequestException value)? serverError,
    TResult Function(AuthFailedRequestException value)? authFailed,
    TResult Function(AccessDeniedRequestException value)? accessDenied,
    TResult Function(NetworkFailureRequestException value)? networkFailure,
    TResult Function(NotFoundRequestException value)? notFound,
    TResult Function(BadRequestRequestException value)? badRequest,
    TResult Function(TryCatchRequestException value)? tryCatch,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundRequestException implements RequestException {
  const factory NotFoundRequestException() = _$NotFoundRequestExceptionImpl;
}

/// @nodoc
abstract class _$$BadRequestRequestExceptionImplCopyWith<$Res> {
  factory _$$BadRequestRequestExceptionImplCopyWith(
          _$BadRequestRequestExceptionImpl value,
          $Res Function(_$BadRequestRequestExceptionImpl) then) =
      __$$BadRequestRequestExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic>? message});
}

/// @nodoc
class __$$BadRequestRequestExceptionImplCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res,
        _$BadRequestRequestExceptionImpl>
    implements _$$BadRequestRequestExceptionImplCopyWith<$Res> {
  __$$BadRequestRequestExceptionImplCopyWithImpl(
      _$BadRequestRequestExceptionImpl _value,
      $Res Function(_$BadRequestRequestExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BadRequestRequestExceptionImpl(
      freezed == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$BadRequestRequestExceptionImpl implements BadRequestRequestException {
  const _$BadRequestRequestExceptionImpl(final Map<String, dynamic>? message)
      : _message = message;

  final Map<String, dynamic>? _message;
  @override
  Map<String, dynamic>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestException.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestRequestExceptionImpl &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestRequestExceptionImplCopyWith<_$BadRequestRequestExceptionImpl>
      get copyWith => __$$BadRequestRequestExceptionImplCopyWithImpl<
          _$BadRequestRequestExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() authFailed,
    required TResult Function() accessDenied,
    required TResult Function() networkFailure,
    required TResult Function() notFound,
    required TResult Function(Map<String, dynamic>? message) badRequest,
    required TResult Function() tryCatch,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? authFailed,
    TResult? Function()? accessDenied,
    TResult? Function()? networkFailure,
    TResult? Function()? notFound,
    TResult? Function(Map<String, dynamic>? message)? badRequest,
    TResult? Function()? tryCatch,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? authFailed,
    TResult Function()? accessDenied,
    TResult Function()? networkFailure,
    TResult Function()? notFound,
    TResult Function(Map<String, dynamic>? message)? badRequest,
    TResult Function()? tryCatch,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorRequestException value) serverError,
    required TResult Function(AuthFailedRequestException value) authFailed,
    required TResult Function(AccessDeniedRequestException value) accessDenied,
    required TResult Function(NetworkFailureRequestException value)
        networkFailure,
    required TResult Function(NotFoundRequestException value) notFound,
    required TResult Function(BadRequestRequestException value) badRequest,
    required TResult Function(TryCatchRequestException value) tryCatch,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorRequestException value)? serverError,
    TResult? Function(AuthFailedRequestException value)? authFailed,
    TResult? Function(AccessDeniedRequestException value)? accessDenied,
    TResult? Function(NetworkFailureRequestException value)? networkFailure,
    TResult? Function(NotFoundRequestException value)? notFound,
    TResult? Function(BadRequestRequestException value)? badRequest,
    TResult? Function(TryCatchRequestException value)? tryCatch,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorRequestException value)? serverError,
    TResult Function(AuthFailedRequestException value)? authFailed,
    TResult Function(AccessDeniedRequestException value)? accessDenied,
    TResult Function(NetworkFailureRequestException value)? networkFailure,
    TResult Function(NotFoundRequestException value)? notFound,
    TResult Function(BadRequestRequestException value)? badRequest,
    TResult Function(TryCatchRequestException value)? tryCatch,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequestRequestException implements RequestException {
  const factory BadRequestRequestException(
      final Map<String, dynamic>? message) = _$BadRequestRequestExceptionImpl;

  Map<String, dynamic>? get message;
  @JsonKey(ignore: true)
  _$$BadRequestRequestExceptionImplCopyWith<_$BadRequestRequestExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TryCatchRequestExceptionImplCopyWith<$Res> {
  factory _$$TryCatchRequestExceptionImplCopyWith(
          _$TryCatchRequestExceptionImpl value,
          $Res Function(_$TryCatchRequestExceptionImpl) then) =
      __$$TryCatchRequestExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TryCatchRequestExceptionImplCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res, _$TryCatchRequestExceptionImpl>
    implements _$$TryCatchRequestExceptionImplCopyWith<$Res> {
  __$$TryCatchRequestExceptionImplCopyWithImpl(
      _$TryCatchRequestExceptionImpl _value,
      $Res Function(_$TryCatchRequestExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TryCatchRequestExceptionImpl implements TryCatchRequestException {
  const _$TryCatchRequestExceptionImpl();

  @override
  String toString() {
    return 'RequestException.tryCatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TryCatchRequestExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() authFailed,
    required TResult Function() accessDenied,
    required TResult Function() networkFailure,
    required TResult Function() notFound,
    required TResult Function(Map<String, dynamic>? message) badRequest,
    required TResult Function() tryCatch,
  }) {
    return tryCatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? authFailed,
    TResult? Function()? accessDenied,
    TResult? Function()? networkFailure,
    TResult? Function()? notFound,
    TResult? Function(Map<String, dynamic>? message)? badRequest,
    TResult? Function()? tryCatch,
  }) {
    return tryCatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? authFailed,
    TResult Function()? accessDenied,
    TResult Function()? networkFailure,
    TResult Function()? notFound,
    TResult Function(Map<String, dynamic>? message)? badRequest,
    TResult Function()? tryCatch,
    required TResult orElse(),
  }) {
    if (tryCatch != null) {
      return tryCatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorRequestException value) serverError,
    required TResult Function(AuthFailedRequestException value) authFailed,
    required TResult Function(AccessDeniedRequestException value) accessDenied,
    required TResult Function(NetworkFailureRequestException value)
        networkFailure,
    required TResult Function(NotFoundRequestException value) notFound,
    required TResult Function(BadRequestRequestException value) badRequest,
    required TResult Function(TryCatchRequestException value) tryCatch,
  }) {
    return tryCatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerErrorRequestException value)? serverError,
    TResult? Function(AuthFailedRequestException value)? authFailed,
    TResult? Function(AccessDeniedRequestException value)? accessDenied,
    TResult? Function(NetworkFailureRequestException value)? networkFailure,
    TResult? Function(NotFoundRequestException value)? notFound,
    TResult? Function(BadRequestRequestException value)? badRequest,
    TResult? Function(TryCatchRequestException value)? tryCatch,
  }) {
    return tryCatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorRequestException value)? serverError,
    TResult Function(AuthFailedRequestException value)? authFailed,
    TResult Function(AccessDeniedRequestException value)? accessDenied,
    TResult Function(NetworkFailureRequestException value)? networkFailure,
    TResult Function(NotFoundRequestException value)? notFound,
    TResult Function(BadRequestRequestException value)? badRequest,
    TResult Function(TryCatchRequestException value)? tryCatch,
    required TResult orElse(),
  }) {
    if (tryCatch != null) {
      return tryCatch(this);
    }
    return orElse();
  }
}

abstract class TryCatchRequestException implements RequestException {
  const factory TryCatchRequestException() = _$TryCatchRequestExceptionImpl;
}
