import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmer extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  const LoadingShimmer({this.width, this.height, this.radius = 0, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.4),
        highlightColor: theme.backgroundColor,
        child: Container(
          color: Colors.grey.withOpacity(0.4),
          width: width,
          height: height,
        ),
      ),
    );
  }
}
