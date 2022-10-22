import 'package:flutter/material.dart';
import 'package:petadop/core/widgets/custom_responsive_screen.dart';
import 'package:petadop/presentation/ui/detail/components/detail_tablet_layout.dart';

import '../../../core/model/pet_model.dart';
import 'components/detail_desktop_layout.dart';
import 'components/detail_mobile_layout.dart';

class DetailScreen extends StatelessWidget {
  final PetModel petModel;
   const DetailScreen({Key? key,
     required this.petModel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: CustomResponsiveScreen(
          mobile: DetailMobileLayout(petModel: petModel,),
          tablet: const DetailTabletLayout(),
          dekstop: const DetailDesktopLayout(),
        ),
      ),
    );
  }
}
