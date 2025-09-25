import 'package:get/get.dart';

class SplashController extends GetxController{

  var currentSteps = 1.obs;
  final int finalSteps = 4;

  @override
  void onInit() {
    super.onInit();
    startProgress();
  }

  void startProgress() async {

     for(int i = 1; i <= finalSteps; i++){
       await Future.delayed(Duration(seconds: 1));
       currentSteps.value = i;
       if(i == finalSteps){
        Get.toNamed('/getStartedScreen');
       }
     }
  }
}