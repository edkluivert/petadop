import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petadop/core/theme/app_color.dart';

import '../../../../core/theme/cubit/theme_cubit.dart';

class PetAttrCard extends StatelessWidget {
  String title;
  String subTitle;
  PetAttrCard({Key? key, required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Container(
              width: 91,
              height: 60,
              decoration: BoxDecoration(
                  color: state.themeMode == ThemeMode.light ? AppColor
                      .cardBgColor : AppColor.cardBgColorDark,
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
        });
  }

}
