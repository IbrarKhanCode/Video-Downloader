import 'package:flutter/material.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomContainer({super.key, required this.text, required this.onTap,});

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: h * .06,
        width: w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor,
        ),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
      ),
    );
  }
}
