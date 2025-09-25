import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/controllers/onboarding_controller.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';
import 'package:video_downloader/custom_widgets/custom_container.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: h * .1,),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed('/loginScreen');
                  },
                  child: Container(
                    height: h * .04,
                    width: w * .18,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(child: Text('Skip',style: TextStyle(color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700),),),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * .06,
            ),
            Obx((){
              return Container(
                height: h * .35,
                width: w * .9,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            controller.images[controller.currentIndex.value],
                        ))
                ),
              );
            }),
            SizedBox(height: h * .06,),
            Obx((){
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AnimatedContainer(
                            height: h * .02,
                            width: controller.currentIndex.value == 0 ? w * .08 : w * .03,
                            decoration: BoxDecoration(
                              color: controller.currentIndex.value == 0 ? AppColors.primaryColor
                                  : Colors.grey.shade300,
                              shape: BoxShape.circle,
                            ),
                            duration: Duration(milliseconds: 300),
                        ),
                        SizedBox(width: 5,),
                        AnimatedContainer(
                            height: h * .02,
                            width: controller.currentIndex.value == 1 ? w * .08 : w * .03,
                            decoration: BoxDecoration(
                              color: controller.currentIndex.value == 1 ? AppColors.primaryColor
                                  : Colors.grey.shade300,
                              shape: BoxShape.circle,
                            ),
                            duration: Duration(milliseconds: 300)),
                        SizedBox(width: 5,),
                        AnimatedContainer(
                            height: h * .02,
                            width: controller.currentIndex.value == 2 ? w * .08 : w * .03,
                            decoration: BoxDecoration(
                              color: controller.currentIndex.value == 2 ? AppColors.primaryColor
                                  : Colors.grey.shade300,
                              shape: BoxShape.circle,
                            ),
                            duration: Duration(milliseconds: 300)),
                        SizedBox(width: 5,),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            controller.nextStep();
                          },
                          child: Container(
                            height: h * .04,
                            width: w * .18,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Text('Next',style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w600),),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
            SizedBox(height: 20,),
            Container(
              height: h * .2,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                color: Colors.grey.shade100,
              ),
            ),
            SizedBox(height: h * .05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomContainer(
                  text: 'Install Now',
                  onTap: (){
                    Get.toNamed('/loginScreen');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
