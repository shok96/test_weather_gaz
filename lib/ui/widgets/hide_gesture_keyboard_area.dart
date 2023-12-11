import 'package:flutter/widgets.dart';

import '../../utils/hide_keyboard.dart';

class HideGestureKeyboardArea extends StatelessWidget {
  const HideGestureKeyboardArea({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => hideKeyboard(context),
      child: child,
    );
  }
}
