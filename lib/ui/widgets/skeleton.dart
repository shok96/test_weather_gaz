import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../animations/widgets/delayed_child.dart';
import '../res/colors.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    Key? key,
    this.widgetBase,
    this.isDelayed = false,
  }) : super(key: key);

  final Widget? widgetBase;
  final bool isDelayed;

  @override
  Widget build(BuildContext context) {
    return DelayedChild(
      isDelayed: isDelayed,
      child:Shimmer.fromColors(
              baseColor: violetPink,
              highlightColor: shimmerHighlight,
              child: widgetBase ?? const ColoredBox(color: Colors.black),
            )

    );
  }
}
