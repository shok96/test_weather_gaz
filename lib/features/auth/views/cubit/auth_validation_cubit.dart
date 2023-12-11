import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testweathergaz/features/auth/views/cubit/auth_cubit.dart';

import '../../../../ui/widgets/input_error_controller.dart';
import '../../../../utils/localizationsUtils.dart';

part 'auth_validation_state.dart';

part 'auth_validation_cubit.freezed.dart';

class AuthValidationCubit extends Cubit<AuthValidationState> {
  AuthValidationCubit(this._authCubit)
      : super(const AuthValidationState.initial()) {
    _init();
  }

  final AuthCubit _authCubit;

  final passCntrl = TextEditingController();
  final emailCntrl = TextEditingController();

  final emailFocus = FocusNode();
  final passFocus = FocusNode();

  final passErrorCntrl = InputErrorController();
  final emailErrorCntrl = InputErrorController();

  void _init() {
    passCntrl.addListener(cntrlListener);
    emailCntrl.addListener(cntrlListener);
  }

  bool _isValidEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
    );
    return emailRegex.hasMatch(email);
  }

  LocalizedString? emailValidation(String text) {
    return !_isValidEmail(text) ? (l) => l.validationEmail : null;
  }

  LocalizedString? notEmpty(String entry) {
    final value = entry.trim();
    return value.isEmpty ? (l) => l.validationEmpty : null;
  }

  void cntrlListener() {
    emailErrorCntrl.setLocalizedError(emailValidation(emailCntrl.text));
    final emailCheck = emailErrorCntrl.hasError;
    passErrorCntrl.setLocalizedError(notEmpty(passCntrl.text));
    final passCheck = passErrorCntrl.hasError;
    emit(
      state.copyWith(
        isEmail: !emailCheck,
        isPassword: !passCheck,
      ),
    );
  }

  void login() {
    if (emailErrorCntrl.hasError || passErrorCntrl.hasError) return;
    _authCubit.auth(emailCntrl.text.trim(), passCntrl.text.trim());
    emailFocus.unfocus();
    passFocus.unfocus();
  }

  @override
  Future<void> close() {
    emailCntrl.removeListener(cntrlListener);
    passCntrl.removeListener(cntrlListener);
    emailErrorCntrl.dispose();
    passErrorCntrl.dispose();
    return super.close();
  }
}
