import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petadop/core/utils/utils.dart';
import 'package:petadop/core/widgets/custom_responsive_screen.dart';
import 'package:petadop/presentation/controller/home_controller.dart';
import 'package:petadop/presentation/ui/home/components/home_mobile_layout.dart';
import 'package:petadop/presentation/ui/home/components/shimmer/header_shimmer.dart';
import 'package:petadop/presentation/ui/home/components/shimmer/items_shimmer.dart';

import '../../../core/constants/constants.dart';
import '../../../core/theme/cubit/theme_cubit.dart';
import 'components/home_desktop_layout.dart';
import 'components/home_tablet_layout.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Stack(
          children: [
            Obx(() =>
            controller.callComplete.value == false
                ? const HeaderShimmer()
                : Padding(
              padding: const EdgeInsets.only(right: 26),
              child: SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          heyUser,
                          style: theme.textTheme.headlineLarge,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          introText,
                          style: theme.textTheme.headlineSmall,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Text(
                          nearby,
                          style: theme.textTheme.headlineMedium,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 52,
                    ),
                    BlocBuilder<ThemeCubit, ThemeState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              context.read<ThemeCubit>().changeThemeMode(
                                state.themeMode == ThemeMode.light
                                    ? ThemeMode.dark
                                    : ThemeMode.light,
                              );
                            },
                            child: SvgPicture.asset(
                              Utils.getIconPath('bulb'),
                              color: state.themeMode == ThemeMode.light
                                  ? theme.primaryColorDark
                                  : theme.primaryColor,
                              width: 24,
                              height: 24,
                            ),
                          );
                        })
                  ],
                ),
              ),
            )),

            Obx(() =>controller.callComplete.value == false ? const ItemShimmer():
              const Positioned(
                top: 80,
                child: CustomResponsiveScreen(
                  mobile: HomeMobileLayout(),
                  tablet: HomeTabletLayout(),
                  dekstop: HomeDesktopLayout(),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
