import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petadop/core/constants/constants.dart';
import 'package:petadop/core/utils/utils.dart';
import 'package:petadop/presentation/ui/detail/components/pet_attr_card.dart';

import '../../../../core/model/pet_model.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/cubit/theme_cubit.dart';

class DetailMobileLayout extends StatelessWidget {
  final PetModel petModel;

  DetailMobileLayout({Key? key,
    required this.petModel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:    BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return  Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Expanded(child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.arrow_back),
                            color: AppColor.primaryColor ,),
                        ),
                        SvgPicture.asset(Utils.getIconPath('fav'),width: 24,height: 24,)
                      ],
                    )),
                  ),
                  AspectRatio(
                    aspectRatio: 3/2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color:Color(petModel.cardBgColor)
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  color: theme.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:27 , vertical: 36),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(petModel.name,style: theme.textTheme.bodyLarge,),
                                const SizedBox(height: 17,),
                                Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(Utils.getIconPath('pin')),
                                    Text(petModel.distance, style: theme.textTheme.bodyMedium,)
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Text(petModel.timeUpload,style: theme.textTheme.bodySmall,)

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:13 ),
                              child: Container(
                                width: 53,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: petModel.gender == 'male'?AppColor.maleColor.withOpacity(0.10):AppColor.femaleColor.withOpacity(0.10),
                                    borderRadius: BorderRadius.circular(31)
                                ),
                                child: Text(petModel.gender, style: petModel.gender == 'male'?theme.textTheme.titleMedium:theme.textTheme.displayMedium,),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40,),
                        Text('My Story', style: theme.textTheme.labelLarge,),
                        const SizedBox(height: 20,),
                        SizedBox(
                          height:140 ,
                          child: Text(profileContent, style: theme.textTheme.bodySmall,),
                        ),
                        const SizedBox(height: 36,),
                        Text('Quick info', style: theme.textTheme.labelLarge,),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             PetAttrCard(
                               title: '',
                               subTitle: '',
                             ),
                            PetAttrCard(
                              title: '',
                              subTitle: '',
                            ),
                            PetAttrCard(
                              title: '',
                              subTitle: '',
                            )
                          ],
                        ),
                        const SizedBox(height: 36,),
                        Text('Owner Info', style: theme.textTheme.labelLarge,),
                        const SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                            const SizedBox(width: 106,),
                            Container(
                              height:40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle
                              ),
                              color: state.themeMode == ThemeMode.light?AppColor.maleColor:AppColor.btnDarkColor,
                              child: SvgPicture.asset(Utils.getIconPath('msg'),width: 14, height: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 56,),
                        SizedBox(
                          height: 52,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                textStyle: theme.textTheme.labelMedium,
                                backgroundColor: state.themeMode == ThemeMode.light?AppColor.maleColor:AppColor.btnDarkColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15), // <-- Radius
                                ),

                              ),
                              onPressed: (){

                              }, child: const Text('Adopt me',)),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        })


    );
  }
}
