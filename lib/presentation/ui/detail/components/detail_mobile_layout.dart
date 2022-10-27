import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petadop/core/constants/constants.dart';
import 'package:petadop/core/utils/utils.dart';
import 'package:petadop/presentation/ui/detail/components/pet_attr_card.dart';
import '../../../../core/model/pet_model.dart';
import '../../../../core/theme/app_color.dart';


class DetailMobileLayout extends StatelessWidget {
  final PetModel petModel;

   DetailMobileLayout({Key? key,
    required this.petModel
  }) : super(key: key);

  bool colorSwitch = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 3/2,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(petModel.cardBgColor)
                    ),
                    child: Center(child: Image.asset(Utils.getImagePath(petModel.imageLink))),
                  ),
                  Positioned(
                    top: 40,
                    left: 19,
                    right: 19,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: (){
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back, semanticLabel: 'back',size: 30,),
                          color: AppColor.primaryColor ,),
                        GestureDetector(
                          onTap: (){

                          },
                          child: StatefulBuilder(
                            builder: (context, state) {
                              return IconButton(
                                onPressed: (){
                                  state((){
                                    if(colorSwitch==false){
                                      colorSwitch = true;
                                    }else{
                                      colorSwitch = false;
                                    }
                                  });
                                },
                                icon: const Icon(Icons.favorite, semanticLabel: 'favourite',size: 30,),
                                color: colorSwitch?Colors.red:AppColor.primaryColor ,);
                            }
                          ),
                        ),
                        // SvgPicture.asset(Utils.getIconPath('fav'),width: 24,height: 24,),
                      //  SvgPicture.asset(Utils.getIconPath('fav'),width: 24,height: 24,)
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              color: Get.isDarkMode?AppColor.primaryColorDark:theme.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:25 , vertical: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(petModel.name,style: theme.textTheme.bodyLarge,),
                            const SizedBox(height: 17,),
                            Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(Utils.getIconPath('pin')),
                                const SizedBox(width: 5,),
                                Text(petModel.distance, style: theme.textTheme.bodyMedium,)
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Text(petModel.timeUpload,style: theme.textTheme.bodySmall,)

                          ],
                        ),
                        Container(
                          width: 53,
                          height: 25,
                          decoration: BoxDecoration(
                              color: petModel.gender == 'male'?AppColor.maleColor.withOpacity(0.10):AppColor.femaleColor.withOpacity(0.10),
                              borderRadius: BorderRadius.circular(31)
                          ),
                          child: Center(child: Text(petModel.gender, style: petModel.gender == 'male'?theme.textTheme.titleMedium:theme.textTheme.displayMedium,)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Text('My Story', style: theme.textTheme.labelLarge,),
                    const SizedBox(height: 16,),
                    SizedBox(
                      height:80 ,
                      child: Text(profileContent, style: theme.textTheme.bodySmall,),
                    ),
                    const SizedBox(height: 36,),
                    Text('Quick info', style: theme.textTheme.labelLarge,),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PetAttrCard(
                          title: '1.4 yrs',
                          subTitle: 'Age',
                        ),
                        PetAttrCard(
                          title: 'Brown',
                          subTitle: 'Color',
                        ),
                        PetAttrCard(
                          title: '14kg',
                          subTitle: 'Weight',
                        )
                      ],
                    ),
                    const SizedBox(height: 36,),
                    Text('Owner Info', style: theme.textTheme.labelLarge,),
                    const SizedBox(height: 24,),
                    Row(
                      children: [
                        Image.asset(Utils.getImagePath('avatar'),width: 60, height: 60,),
                        const SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ed Kluivert', style: theme.textTheme.bodyMedium,),
                            const SizedBox(height: 10,),
                            Text('Software developer', style: theme.textTheme.bodySmall,)
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height:40,
                          width: 40,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: Get.isDarkMode ? AppColor.btnDarkColor: AppColor.maleColor,
                          ),

                          child: Center(child: SvgPicture.asset(Utils.getIconPath('msg'),width: 14, height: 14)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 45,),
                    Center(
                      child: SizedBox(
                        height: 52,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              textStyle: theme.textTheme.labelMedium,
                              backgroundColor: Get.isDarkMode ? AppColor.btnDarkColor: AppColor.maleColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15), // <-- Radius
                              ),

                            ),
                            onPressed: (){

                            }, child:Text('Adopt me', style: theme.textTheme.labelMedium,)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,)
          ],
        ),
      )
    );
  }
}
