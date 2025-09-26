import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_downloader/core/utilis/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: h * .05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: (){
                        Get.back();
                      }, icon: Icon(Icons.arrow_back)
                  ),
                  Text('Settings',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
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
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: h * .4,
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
                      height: h * .08,
                      width: w * .15,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/setting.png')),
                          shape: BoxShape.circle
                      ),
                    ),
                    Text('Mark Jonson',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600),),
                    StreamBuilder<DocumentSnapshot>(
                        stream: FirebaseFirestore.instance.collection('users').doc(user!.uid).snapshots(),
                        builder: (context,snapshot){
                          if(!snapshot.hasData || !snapshot.data!.exists){
                            return Center(child: Text('User has no data'),);
                          }
                          var userData = snapshot.data!.data() as Map<String, dynamic>?;
                          if(userData == null || userData.isEmpty){
                            return Center(child: Text('User has no data'),);
                          }

                          return Text(userData['email'],
                            style: TextStyle(color: Colors.grey,
                                fontWeight: FontWeight.w500,fontSize: 12),);
                        }),
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
