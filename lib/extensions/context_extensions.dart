import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension ContextExtension on BuildContext {
  T? readOrNull<T>() {
    try {
      return read<T>();
    } catch (_) {
      return null;
    }
  }
}
