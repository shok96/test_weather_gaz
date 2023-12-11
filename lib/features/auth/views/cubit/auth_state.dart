part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.auth() = _Auth;
  const factory AuthState.fetch() = _Fetch;
  const factory AuthState.unAuth() = _UnAuth;
  const factory AuthState.notFound() = _NotFound;
  const factory AuthState.wrongPassword() = _WrongPassword;
  const factory AuthState.wrongInternet() = _WrongInternet;
}
