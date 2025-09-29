import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';
import 'package:dotted_line/dotted_line.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result){
        if(didPop){
          controller.clear();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
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
                height: h * .7,
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
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Container(
                            height: h * .05,
                            width: w * .1,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Center(child: Icon(Icons.download,color: Colors.white,)),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('Download Any Video',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                      SizedBox(height: 10,),
                      Text('Download Video From Any Platform',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),),
                      SizedBox(height: 10,),
                      Stack(
                        children: [
                          SizedBox(
                            height : h * .07,
                            width: w,
                            child: TextField(
                              controller: controller,
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
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Image.asset('assets/images/right_arrow.png')),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: h * .1,
                            width: w * .17,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: Container(
                                height: h * .05,
                                width: w * .1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/f.png')),
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 25,),
                          Container(
                            height: h * .1,
                            width: w * .17,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: Container(
                                height: h * .05,
                                width: w * .1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/youtube.png')),
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 25,),
                          Container(
                            height: h * .1,
                            width: w * .17,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: Container(
                                height: h * .05,
                                width: w * .1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/instagram.png')),
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 25,),
                          Container(
                            height: h * .1,
                            width: w * .17,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                                Text('View all',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: h * .2,
                        width: w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text('How To Download ?',style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 12,color: Color(0xffFF6E6C)),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: h * .06,
                                  width: w * .12,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 2,color: AppColors.primaryColor)
                                  ),
                                  child: Center(
                                    child: Text('1',style: TextStyle(color: Colors.black,fontSize: 16,
                                        fontWeight: FontWeight.w600),),
                                  ),
                                ),
                                DottedLine(
                                  direction: Axis.horizontal,
                                  dashColor: AppColors.primaryColor,
                                  dashLength: 10,
                                  lineLength: 70,
                                  lineThickness: 2,
                                ),
                                Container(
                                  height: h * .06,
                                  width: w * .12,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(width: 2,color: AppColors.primaryColor)
                                  ),
                                  child: Center(
                                    child: Text('2',style: TextStyle(color: Colors.black,fontSize: 16,
                                        fontWeight: FontWeight.w600),),
                                  ),
                                ),
                                DottedLine(
                                  direction: Axis.horizontal,
                                  dashColor: AppColors.primaryColor,
                                  dashLength: 10,
                                  lineLength: 70,
                                  lineThickness: 2,
                                ),
                                Container(
                                  height: h * .06,
                                  width: w * .12,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(width: 2,color: AppColors.primaryColor)
                                  ),
                                  child: Center(
                                    child: Text('3',style: TextStyle(color: Colors.black,fontSize: 16,
                                        fontWeight: FontWeight.w600),),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: w * .12),
                                Text('Copy',style: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.w500,fontSize: 12),),
                                SizedBox(width: w * .22),
                                Text('Past',style: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.w500,fontSize: 12),),
                                SizedBox(width: w * .18),
                                Text('Download',style: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.w500,fontSize: 12),),

                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: w * .09),
                                Text('Video Url',style: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.w500,fontSize: 12),),
                                SizedBox(width: w * .15),
                                Text('Copied Url',style: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.w500,fontSize: 12),),
                                SizedBox(width: w * .16),
                                Text('Video',style: TextStyle(color: Colors.grey,
                                    fontWeight: FontWeight.w500,fontSize: 12),),

                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
