import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/controllers/home_controller.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';
import 'package:video_downloader/view/home/home_screen.dart';
import 'package:video_downloader/view/home/other_tools_screen.dart';
import 'package:video_downloader/view/home/select_platform_screen.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {

  final controller = Get.put(HomeController());
  final List<Widget> widgets = [
    HomeScreen(),
    SelectPlatformScreen(),
    OtherToolsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            onTap: controller.onTapped,
            selectedFontSize: 9,
            unselectedFontSize: 9,

            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/home.png')),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/platform.png')),
                  label: 'Platform'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.star_border),
                  label: 'Tools',

              ),

            ]
        ),
        body: widgets[controller.selectedIndex.value],
      );
    });
  }
}
