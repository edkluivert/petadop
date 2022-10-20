import 'package:flutter/material.dart';
import 'package:petadop/core/widgets/responsive_screen.dart';
import 'package:petadop/presentation/ui/detail/components/detail_tablet_layout.dart';

import 'components/detail_desktop_layout.dart';
import 'components/detail_mobile_layout.dart';

class DetailScreen extends StatelessWidget {
  int imageBgColor;
  String image;
  String name;
  String distance;
  String gender;
  String attr;
  String timeUploaded;
   DetailScreen({Key? key,
    required this.imageBgColor,required this.image,
    required this.name, required this.attr, required this.distance, required this.gender, required this.timeUploaded
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: ResponsiveScreen(
          mobile: DetailMobileLayout(image: image,name: name,distance: distance,attr: attr,timeUploaded: timeUploaded,gender: gender,imageBgColor: imageBgColor,),
          tablet: const DetailTabletLayout(),
          dekstop: const DetailDesktopLayout(),
        ),
      ),
    );
  }
}
