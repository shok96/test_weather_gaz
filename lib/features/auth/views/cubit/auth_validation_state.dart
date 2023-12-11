part of 'auth_validation_cubit.dart';

@freezed
class AuthValidationState with _$AuthValidationState {
  const factory AuthValidationState.initial({
    @Default(false) bool isEmail,
    @Default(false) bool isPassword,
  }) = _Initial;
}
