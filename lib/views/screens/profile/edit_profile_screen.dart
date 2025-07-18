import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/app_constants/app_colors.dart';
import '../../widgets/cachanetwork_image.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController addressCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: CustomText(text: "Edit Profile", fontSize: 22.h, color: AppColors.textColorSecondary5EAAA8)),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 70.h),

            SizedBox(
              height: 86.h,
              child: Stack(
                children: [

                  CustomNetworkImage(
                    imageUrl: "https://i.pravatar.cc/150?img=3",
                    height: 85.h,
                    width: 85.w,
                    boxShape: BoxShape.circle,
                  ),


                  Positioned(
                    bottom: 7.h,
                      left: 30.w,
                      child: Icon(Icons.camera_alt_outlined, color: Colors.white)

                  )
                ],
              ),
            ),


            SizedBox(height: 16.h),


            CustomTextField(
              controller: nameCtrl,
              hintText: "victor",
              labelText: "Your Name",
              contentPaddingVertical: 10.h,
              borderColor: Color(0xff592B00),
              hintextColor: Colors.black,
            ),



            CustomTextField(
              controller: phoneCtrl,
              hintText: "54123545121",
              labelText: "Phone No.",
              borderColor: Color(0xff592B00),
              hintextColor: Colors.black,
              contentPaddingVertical: 10.h,
            ),



            CustomTextField(
              controller: addressCtrl,
              hintText: "USA, New york, post code-5212",
              labelText: "Address",
              borderColor: Color(0xff592B00),
              hintextColor: Colors.black,
              contentPaddingVertical: 10.h,
            ),



            Spacer(),


            CustomButton(title: "Update Profile", onpress: (){
              Get.back();
              Get.back();
            }),

            SizedBox(height: 100.h)


          ],
        ),
      ),
    );
  }
}
