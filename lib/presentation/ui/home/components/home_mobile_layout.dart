import 'package:flutter/material.dart';

class HomeMobileLayout extends StatelessWidget {
  const HomeMobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height,
    child: CustomScrollView(

    ),
    );
  }
}
