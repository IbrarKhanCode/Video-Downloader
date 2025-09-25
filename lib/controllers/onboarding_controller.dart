import 'package:get/get.dart';

class OnBoardingController extends GetxController{

  var currentIndex = 0.obs;

  final List<String> images = [
    'assets/images/onboarding 1.png',
    'assets/images/onboarding 2.png',
    'assets/images/onboarding 3.png',
  ];

  void nextStep(){

   if(currentIndex.value < images.length -1){
     currentIndex.value++;
   } else{
     Get.toNamed('/loginScreen');
   }
  }
}