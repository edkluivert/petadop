import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petadop/core/theme/app_color.dart';
import 'package:petadop/core/utils/utils.dart';

import '../../../../core/theme/cubit/theme_cubit.dart';

class CardLayout extends StatelessWidget {
  int cardColor;
  String image;
  String name;
  String attr;
  String distance;
  String gender;
  String timeUploaded;

   CardLayout({Key? key, required this.cardColor,required this.image,
  required this.name, required this.attr, required this.distance, required this.gender, required this.timeUploaded
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
        return Card(
          color: state.themeMode == ThemeMode.light?Colors.white:AppColor.petCardBgDark,
          child: Row(
            children: [
              Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(cardColor),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: Image.asset(Utils.getImagePath(''),width: 40,height: 40,)),
              ),
              const SizedBox(width: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(name, style: theme.textTheme.titleLarge,),
                  const SizedBox(height: 9,),
                  Text(attr, style: theme.textTheme.titleSmall,),
                  const SizedBox(height: 17,),
                  SizedBox(width: 80,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SvgPicture.asset(Utils.getIconPath('pin')),
                       Text(distance, style: theme.textTheme.titleSmall,)
                     ],
                   ),
                  )

                ],
              ),
              const SizedBox(width: 45,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 53,
                    height: 25,
                    decoration: BoxDecoration(
                      color: gender == 'male'?AppColor.maleColor.withOpacity(0.10):AppColor.femaleColor.withOpacity(0.10),
                      borderRadius: BorderRadius.circular(31)
                    ),
                    child: Text(gender, style: gender == 'male'?theme.textTheme.titleMedium:theme.textTheme.displayMedium,),
                  ),
                  const SizedBox(height: 40,),
                  Text(timeUploaded,style:theme.textTheme.titleSmall)
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
