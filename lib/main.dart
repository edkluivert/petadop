import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:petadop/presentation/controller/theme_controller.dart';
import 'package:petadop/presentation/ui/home/home_screen.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'core/theme/app_theme.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'di/app_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // Initialize Hive
  await Hive.openBox('settings');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // systemNavigationBarColor: labelGrey,
      // systemNavigationBarIconBrightness: Brightness.light,
      // systemNavigationBarDividerColor: labelGrey,
      // statusBarIconBrightness: Brightness.dark
    );
    SystemChrome.setSystemUIOverlayStyle(dark);

    final ThemeController themeController = Get.put(ThemeController());

    return  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Petadop",
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: themeController.themeStateFromHiveSettingBox,
        initialBinding: AppBinding(),
        home: const HomeScreen(),
        builder: (context, child) {
          return ResponsiveWrapper.builder(
            child,
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
          );
        },
       );

  }
}

