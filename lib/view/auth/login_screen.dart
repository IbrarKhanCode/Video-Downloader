import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/controllers/home_controller.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';
import 'package:video_downloader/custom_widgets/custom_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: h * .25,),
            Center(
              child: Container(
                height: h * .3,
                width: w * .7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/login.png'))
                ),
              ),
            ),
            SizedBox(height: h * .1,),
            GestureDetector(
              onTap: (){
                controller.googleSignIn();
              },
              child: Container(
                height: h * .06,
                width: w * .9,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.primaryColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google.png'),
                    SizedBox(width: 10,),
                    Text('Continue With Google',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: h * .06,
              width: w * .9,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/facebook.png'),
                  SizedBox(width: 10,),
                  Text('Continue With Facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: h * .06,
              width: w * .9,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/x.png'),
                  SizedBox(width: 10,),
                  Text('Continue With Twitter',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('By continuing, you agree to our',style: TextStyle(color: Colors.grey,fontSize: 12),),
                SizedBox(width: 5,),
                Text(
                  'Terms & Conditions',style: TextStyle(decoration: TextDecoration.underline,
                    color: Colors.black,fontSize: 13),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('and',style: TextStyle(color: Colors.grey,fontSize: 12),),
                SizedBox(width: 5,),
                Text(
                  'Privacy Policy.',style: TextStyle(decoration: TextDecoration.underline,
                    color: Colors.black,fontSize: 13),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
