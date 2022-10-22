import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:petadop/core/model/pet_model.dart';
import 'package:petadop/core/theme/app_color.dart';

import '../../core/theme/app_theme.dart';

import '../../core/theme/theme_service.dart';

class HomeController extends GetxController{


  var callComplete = false.obs;
  // late final GetStorage _getStorage;
  // var isDarkMode = false.obs;
  //
  // @override
  // void onInit(){
  //   super.onInit();
  //   _getStorage = GetStorage();
  //   isDarkMode.value = _getStorage.read(GetStorageThemeKey.isDarkMode);
  // }





  void mimickApiCall(){
    Future.delayed(const Duration(seconds: 5)).whenComplete((){
      callComplete.value = true;
    });
  }

  List<PetModel> lstOfPets = [
    PetModel('cat1', pet1Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('cat2', pet2Color, 'Sparky', '125m away', '2 yrs  |Playful', 'male', '10 min ago'),
    PetModel('dog1', pet3Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('rabbitwyt', pet4Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('cat3', pet5Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog2', pet6Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog3', pet7Color, 'Sparky', '125m away', '2 yrs | Playful', 'female', '10 min ago'),
    PetModel('rabbitbrown', pet8Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog4', pet9Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog5', pet10Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog6', pet11Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
  ];

  // void changeTheme(BuildContext context) {
  //   final theme = Get.isDarkMode ? AppTheme.light : AppTheme.dark;
  //   ThemeSwitcher.of(context)!.changeTheme(theme: theme);
  //   ThemeService().
  //   // if (_getStorage.read(GetStorageThemeKey.isDarkMode)) {
  //   //   _getStorage.write(GetStorageThemeKey.isDarkMode, false);
  //   //   isDarkMode.value = false;
  //   // } else {
  //   //   _getStorage.write(GetStorageThemeKey.isDarkMode, true);
  //   //   isDarkMode.value = true;
  //   // }
  // }

}