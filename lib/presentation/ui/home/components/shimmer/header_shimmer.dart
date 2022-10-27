
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';


import '../../../../../core/utils/utils.dart';

class HeaderShimmer extends StatelessWidget {
  const HeaderShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[100]!,
      period: const Duration(milliseconds: 1500),
      direction : ShimmerDirection.ltr,
      loop: 0,
      child: SizedBox(
        width: size.width,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                  width: 150,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 170,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: 10,
                  width: 150,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              width: 52,
            ),

          ],
        ),
      ),
    );
  }
}
