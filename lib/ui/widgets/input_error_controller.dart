import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InputErrorController extends ChangeNotifier {
  String Function(AppLocalizations localizations)? _localizedErrorBuilder;

  String? getLocalizedError(AppLocalizations localizations) {
    return _localizedErrorBuilder?.call(localizations);
  }

  void setLocalizedError(
      String Function(AppLocalizations localizations)? stringBuilder,
      ) {
    _localizedErrorBuilder = stringBuilder;
    notifyListeners();
  }

  void clear() {
    _localizedErrorBuilder = null;
    notifyListeners();
  }

  bool get hasError => _localizedErrorBuilder != null;
}