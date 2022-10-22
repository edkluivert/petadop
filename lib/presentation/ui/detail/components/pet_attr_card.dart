import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petadop/core/theme/app_color.dart';



class PetAttrCard extends StatelessWidget {
  String title;
  String subTitle;
  PetAttrCard({Key? key, required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        width: 91,
        height: 60,
        decoration: BoxDecoration(
            color: Get.isDarkMode? AppColor.cardBgColorDark:AppColor
                .cardBgColor,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style:  theme.textTheme.displaySmall),
            const SizedBox(height: 5,),
            Text(subTitle, style: theme.textTheme.labelSmall,)
          ],
        ));
  }

}
