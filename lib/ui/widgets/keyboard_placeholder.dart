import 'package:flutter/material.dart';

class KeyboardPlaceholder extends StatelessWidget {
  const KeyboardPlaceholder({Key? key, this.withSafeArea = false})
      : super(key: key);

  final bool withSafeArea;

  @override
  Widget build(BuildContext context) {
    final bottomInsets = withSafeArea
        ? MediaQuery.of(context)
            .viewInsets
            .bottom
            .clamp(MediaQuery.of(context).viewPadding.bottom, double.infinity)
        : MediaQuery.of(context).viewInsets.bottom;

    return SizedBox(
      height: bottomInsets,
    );
  }
}
