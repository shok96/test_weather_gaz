

import 'package:testweathergaz/features/splash/views/cubit/splash_cubit.dart';

import '../constants/constants.dart';
import 'client.dart';

class DomainBase extends ApiClient {
  DomainBase(super.splashCubit);

  @override
  String get baseUrl => BASE_URL;

}
