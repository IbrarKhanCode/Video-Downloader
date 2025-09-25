import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:video_downloader/controllers/splash_controller.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final controller = Get.put(SplashController());

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
            Center(
              child: Container(
                height: h * .5,
                width: w * .9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage('assets/images/splash.png'))
                ),
              ),
            ),
            SizedBox(height: h * .28,),
            Obx((){
              return SizedBox(
                height: h * .008,
                width: w * .5,
                child: LinearProgressBar(
                  progressColor: AppColors.primaryColor,
                  backgroundColor: Colors.grey.shade200,
                  currentStep: controller.currentSteps.value,
                  maxSteps: controller.finalSteps,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
            SizedBox(height: 10,),
            Text('Version 1.0',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),)
          ],
        ),
      ),
    );
  }
}
