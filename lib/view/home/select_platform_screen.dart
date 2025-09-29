import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';

class SelectPlatformScreen extends StatefulWidget {
  const SelectPlatformScreen({super.key});

  @override
  State<SelectPlatformScreen> createState() => _SelectPlatformScreenState();
}

class _SelectPlatformScreenState extends State<SelectPlatformScreen> {

  final List<String> images = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
    'assets/images/11.png',
    'assets/images/12.png',
    'assets/images/13.png',
    'assets/images/14.png',
    'assets/images/15.png',
    'assets/images/16.png',
    'assets/images/arte.png',
    'assets/images/18.png',
    'assets/images/19.png',
    'assets/images/20.png',
  ];

  final List<String> title = [
    'Facebook',
    'Instagram',
    'Youtube',
    'Twitter',
    'Linkedin',
    'Dailymotion',
    'Redit',
    'Vimeo',
    'Twitch',
    'Periscope',
    'Tiktok',
    'Coursera',
    'Udemy',
    'BBC Iplayer',
    'CNN',
    'ESPN',
    'Arte',
    'Hot Star',
    'ZEE5',
    'SonyLiv',
  ];

  final List<Widget> screens = [

  ];

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: h * .06,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text('Select Platform',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                Spacer(),
                Container(
                  height: h * .025,
                  width: w * .2,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * .015,
                        width: w * .05,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/crown.png'))
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Pro',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12),)
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Get.toNamed('/profileScreen');
                  },
                  child: Container(
                    height: h * .04,
                    width: w * .07,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/profile.png')),
                        shape: BoxShape.circle
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: h * .8,
            width: w,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.shade300,
                  offset: Offset(0, -4)
                )
              ]
            ),
            child: GridView.builder(
              itemCount: images.length,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: h * .10,
                        width:  w * .25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              height: h * .05,
                              width: w * .1,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(images[index])),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(title[index],style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
