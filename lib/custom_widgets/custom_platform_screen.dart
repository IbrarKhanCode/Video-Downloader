import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';

class CustomPlatformScreen extends StatefulWidget {
  final String logo;
  final Color logoContainer;
  final String firstText;
  final String secondText;
  final Color textFieldContainerColor;
  final String arrowImage;
  final Color arrowContainerColor;
  final Color containerColor;
  final Color containerTextColor;
  final TextEditingController controller;
  const CustomPlatformScreen({super.key, required this.logo, required this.firstText, required this.secondText, required this.textFieldContainerColor, required this.arrowImage, required this.containerColor, required this.containerTextColor, required this.controller, required this.arrowContainerColor, required this.logoContainer});

  @override
  State<CustomPlatformScreen> createState() => _CustomPlatformScreenState();
}

class _CustomPlatformScreenState extends State<CustomPlatformScreen> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result){
        if(didPop){
          widget.controller.clear();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: h * .06,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: h * .04,
                    width: w * .07,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border.all(color: AppColors.primaryColor),
                        shape: BoxShape.circle
                    ),
                    child: Center(child: Image.asset('assets/images/arrow.png')),
                  ),
                  SizedBox(width: 10,),
                  Text('Video Downloader',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
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
                    offset: Offset(0, -4),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: h * .1,
                      width: w * .15,
                      decoration: BoxDecoration(
                          color: widget.logoContainer,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Container(
                          height: h * .05,
                          width: w * .1,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage(widget.logo)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(widget.firstText,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                    SizedBox(height: 10,),
                    Text(widget.secondText,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),),
                    SizedBox(height: 10,),
                    Stack(
                      children: [
                        SizedBox(
                          height : h * .07,
                          width: w,
                          child: TextField(
                            controller: widget.controller,
                            maxLines: null,
                            expands: true,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Past url here',
                                hintStyle: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.w500,fontSize: 16),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: AppColors.primaryColor),
                                )
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5,right: 5,bottom: 5),
                            child: Container(
                              height: h * .06,
                              width: w * .12,
                              decoration: BoxDecoration(
                                color: widget.arrowContainerColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(child: Image.asset(widget.arrowImage)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
