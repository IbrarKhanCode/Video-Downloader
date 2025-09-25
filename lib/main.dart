import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/core/routes/app_routes.dart';
import 'package:video_downloader/splash_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashScreen',
      getPages: AppRoutes.pages,
    );
  }
}
