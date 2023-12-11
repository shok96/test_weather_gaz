import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial()) {
    _init();
  }

  late final StreamSubscription<User?> _userStreamSubscription;

  Future<void> _init() async {
    _userStreamSubscription =
        FirebaseAuth.instance.authStateChanges().listen(listenUser);
  }

  void listenUser(User? user) {
    emit(
      user == null ? const AuthState.unAuth() : const AuthState.auth(),
    );
  }

  Future<void> auth(String email, String password) async {
    emit(const AuthState.fetch());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(const AuthState.notFound());
      } else if (e.code == 'wrong-password') {
        emit(const AuthState.wrongPassword());
      }
    }
  }

  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> close() {
    _userStreamSubscription.cancel();
    return super.close();
  }
}
