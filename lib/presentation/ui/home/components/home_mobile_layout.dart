import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petadop/presentation/controller/home_controller.dart';
import 'package:petadop/presentation/ui/home/components/card_layout.dart';

class HomeMobileLayout extends GetView<HomeController> {
  const HomeMobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/7,
      child: LiveList(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index, animation){
         return FadeTransition(
           opacity: animation,
           child: SlideTransition(
             position: Tween<Offset>(
               begin: const Offset(0, 0.3),
               end: Offset.zero
              ).animate(animation),
             child: CardLayout(petModel: controller.lstOfPets[index],),
            ),
          );
        }, itemCount: controller.lstOfPets.length,
       ),
    );
  }
}
