import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/controllers/home_controller.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {

  final controller = Get.put(HomeController());
  final List<Widget> widgets = [
    Center(child: Text('home'),),
    Center(child: Text('fefe'),),
    Center(child: Text('efef'),),
    Center(child: Text('efee'),),
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
            onTap: controller.onTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'dvvd'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'scs'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'sdsvsd'
              )

            ]
        ),
        body: widgets[controller.selectedIndex.value],
      );
    });
  }
}
