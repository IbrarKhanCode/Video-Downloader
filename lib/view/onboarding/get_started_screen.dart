import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/custom_widgets/custom_container.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
              SizedBox(height: h * .3,),
              CustomContainer(
                onTap: (){
                  Get.toNamed('/onboardingScreen');
                },
                  text: 'GET STARTED'),
            ],
          ),
        ),
      ),
    );
  }
}
