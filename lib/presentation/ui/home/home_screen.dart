import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petadop/core/theme/theme_service.dart';
import 'package:petadop/core/utils/utils.dart';
import 'package:petadop/core/widgets/custom_responsive_screen.dart';
import 'package:petadop/presentation/controller/home_controller.dart';
import 'package:petadop/presentation/ui/home/components/home_mobile_layout.dart';
import 'package:petadop/presentation/ui/home/components/shimmer/header_shimmer.dart';
import 'package:petadop/presentation/ui/home/components/shimmer/items_shimmer.dart';
import '../../../core/constants/constants.dart';
import 'components/home_desktop_layout.dart';
import 'components/home_tablet_layout.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final HomeController controller = Get.find();



  @override
  void initState() {

    super.initState();
    controller.fakeApiCall();
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              children: [
                Obx(() =>
                controller.callComplete.value == false
                    ? const HeaderShimmer()
                    : Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: AspectRatio(
                    aspectRatio: 15 / 5.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                        ),
                        const SizedBox(
                          width: 52,
                        ),
                        GestureDetector(
                          onTap: () {
                            ThemeService().switchTheme();
                          },
                          child:SvgPicture.asset(
                              Utils.getIconPath('bulb'),
                              color: Get.isDarkMode
                                  ? theme.primaryColor
                                  : theme.primaryColorDark,
                            )
                        ),
                      ],
                    ),
                  ),
                )),

                Obx(() =>
                controller.callComplete.value == false ?
                const ItemShimmer() :
                const CustomResponsiveScreen(
                  mobile: HomeMobileLayout(),
                  tablet: HomeTabletLayout(),
                  dekstop: HomeDesktopLayout(),
                )
                ),
                const SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
