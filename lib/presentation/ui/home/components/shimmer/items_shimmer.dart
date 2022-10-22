import 'package:flutter/material.dart';

class ItemShimmer extends StatelessWidget {
  const ItemShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SizedBox(
        height: 120,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
