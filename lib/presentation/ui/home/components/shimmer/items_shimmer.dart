import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ItemShimmer extends StatelessWidget {
  const ItemShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      period: const Duration(milliseconds: 1500),
      direction : ShimmerDirection.ltr,
      loop: 0,
      child: Container(
        width: double.infinity,
        height: 120,
        color: Colors.white,
      ),
    );
  }
}
