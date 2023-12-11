import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testweathergaz/constants/constants.dart';

part 'splash_state.dart';

part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState("")) {
    _init();
  }

  final _remoteConfig = FirebaseRemoteConfig.instance;

  Future<void> _init() async {
    await _fetchFirebase();
    emit(SplashState(_remoteConfig.getString(KEY_RCF_LINK)));
  }

  Future<void> fetchKey() async {
    if (state.key.isNotEmpty) return;
    await _init();
  }

  Future<void> _fetchFirebase() async {
    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: Duration(seconds: 60),
        minimumFetchInterval: Duration(seconds: 15),
      ),
    );
    await _remoteConfig.fetch();
    await _remoteConfig.fetchAndActivate();
  }
}
