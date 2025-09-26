import 'package:get/get.dart';
import 'package:video_downloader/splash_screen.dart';
import 'package:video_downloader/view/auth/login_screen.dart';
import 'package:video_downloader/view/home/bottom_view.dart';
import 'package:video_downloader/view/onboarding/get_started_screen.dart';
import 'package:video_downloader/view/onboarding/onboarding_screen.dart';
import 'package:video_downloader/view/profile/profile_screen.dart';

class AppRoutes{

  static final pages = [

    GetPage(
        name: '/splashScreen',
        page: ()=> SplashScreen(),
    ),
    GetPage(
        name: '/getStartedScreen',
        page: ()=> GetStartedScreen(),
    ),
    GetPage(
      name: '/onboardingScreen',
      page: ()=> OnboardingScreen(),
    ),
    GetPage(
      name: '/loginScreen',
      page: ()=> LoginScreen(),
    ),
    GetPage(
      name: '/bottomView',
      page: ()=> BottomView(),
    ),
    GetPage(
      name: '/profileScreen',
      page: ()=> ProfileScreen(),
    ),

  ];

}