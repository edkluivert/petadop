
import 'package:get/get.dart';
import 'package:petadop/core/model/pet_model.dart';



class HomeController extends GetxController with GetSingleTickerProviderStateMixin{


  var callComplete = false.obs;



  void fakeApiCall(){
    Future.delayed(const Duration(seconds: 3)).whenComplete((){
      callComplete.value = true;
    });
  }

  List<PetModel> lstOfPets = [
    PetModel('cat1', pet1Color, 'Teddy', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('cat2', pet2Color, 'Teddy', '125m away', '2 yrs  |Playful', 'male', '10 min ago'),
    PetModel('dog1', pet3Color, 'Teddy', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('rabbitwyt', pet4Color, 'Teddy', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('cat3', pet5Color, 'Maxwell', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog2', pet6Color, 'rex', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog3', pet7Color, 'Sparky', '125m away', '2 yrs | Playful', 'female', '10 min ago'),
    PetModel('rabbitbrown', pet8Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog4', pet9Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog5', pet10Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
    PetModel('dog6', pet11Color, 'Sparky', '125m away', '2 yrs | Playful', 'male', '10 min ago'),
  ];

}