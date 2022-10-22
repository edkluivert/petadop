import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petadop/core/theme/app_color.dart';
import 'package:petadop/core/utils/utils.dart';
import 'package:petadop/presentation/controller/home_controller.dart';

import '../../../../core/model/pet_model.dart';


class CardLayout extends StatelessWidget {
 final PetModel petModel;

   CardLayout({Key? key, required this.petModel
  }) : super(key: key);

   final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Card(
        color: Get.isDarkMode? AppColor.petCardBgDark:Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: (){

          },
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 96,
                    height: 96,
                    decoration: BoxDecoration(
                      color: Color(petModel.cardBgColor),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Image.asset(Utils.getImagePath(petModel.imageLink),width: 80,height: 80,)),
                  ),
                  const SizedBox(width: 18,),
                  SizedBox(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Text(petModel.name, style: theme.textTheme.titleLarge,),
                        const SizedBox(height: 9,),
                        Text(petModel.attr, style: theme.textTheme.titleSmall,),
                        const SizedBox(height: 17,),
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(Utils.getIconPath('pin')),
                            const SizedBox(width: 5,),
                            Text(petModel.distance, style: theme.textTheme.titleSmall,)
                          ],
                        )

                      ],
                    ),
                  ),
                 const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 53,
                        height: 25,
                        decoration: BoxDecoration(
                          color: petModel.gender == "male"?AppColor.maleColor.withOpacity(0.10):AppColor.femaleColor.withOpacity(0.10),
                          borderRadius: BorderRadius.circular(31)
                        ),
                        child: Center(child: Text(petModel.gender, style: petModel.gender == "female"?theme.textTheme.titleMedium:theme.textTheme.displayMedium,)),
                      ),
                      const SizedBox(height: 40,),
                      Text(petModel.timeUpload,style:theme.textTheme.titleSmall)
                    ],
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}
