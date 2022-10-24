
import 'package:get/get.dart';
import 'package:petadop/core/model/pet_model.dart';
import 'package:petadop/presentation/controller/theme_controller.dart';


class HomeController extends GetxController with GetSingleTickerProviderStateMixin{


  var callComplete = false.obs;
  final ThemeController themeController = Get.find<ThemeController>();
  RxBool isDarkMode = false.obs; // Current Theme Stage
  Rx<String> currentModeName = ''.obs;



  @override
  void onInit() {
    //Getting theme Stage from ThemeController when homeView initialized
    isDarkMode.value = themeController.isDarkTheme;
    currentModeName.value = themeController.isDarkTheme ? 'Dark' : 'Light';


    super.onInit();
  }

  // Change Theme  Method That will call From HomeView
  void changeAppTheme() => _changeTheme();

  // Toggling the Theme
  bool toggleTheme() {
    _changeTheme();
    return isDarkMode.value;
  }


  // Calling the changeTheme Method from ThemeController
  void _changeTheme() {
    themeController.changeTheme(
      isDarkMode: isDarkMode,
      modeName: currentModeName,
    );

  }


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

}