import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/congrats_screen.dart';
import 'package:onlineschool/app/widgets/custom_button.dart';
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  var currPassController = TextEditingController();
  var newPassController = TextEditingController();
  var confPassController = TextEditingController();
  var obsur = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15.h),
                child: IconButton(onPressed: (){
                  Get.back();
                }, icon: Icon(Icons.arrow_back,size: 28,),
                alignment:Alignment.topLeft
                ),
              ),
              SizedBox(height: 10.h,),
              Text('Reset Password',style: CustomTextStyle.kHeading,),
              SizedBox(height: 15.h,),

              TextFormField(
                controller: currPassController,
                obscureText: obsur,
                obscuringCharacter: '●',
                decoration: InputDecoration(
                  label: Text('Current Password'),
                ),

              ),
              SizedBox(height: 10.h,),
              TextFormField(
                controller: newPassController,
                obscureText: obsur,
                obscuringCharacter: '●',
                decoration: InputDecoration(
                  label: Text('New Password'),
                ),

              ),
              SizedBox(height: 10.h,),
              TextFormField(
                controller: confPassController,
                obscureText: obsur,
                obscuringCharacter: '●',
                decoration: InputDecoration(
                  label: Text('Confirm Password'),
                  suffixIcon:IconButton(onPressed: (){
                    setState(() {
                      obsur=!obsur;
                    });
                  },icon:obsur? Icon(Icons.visibility_off,):Icon(Icons.visibility))
                ),

              ),
              SizedBox(height: 15.h,),
              SizedBox(
                  width: double.infinity,
                  child: CustomButton(onPressed: (){
                    if(currPassController.text.trim().isEmpty || newPassController.text.trim().isEmpty || confPassController.text.trim().isEmpty) {
                      Fluttertoast.showToast(msg: 'please fill all fields');
                    }
                      if(newPassController.text.trim() !=
                          confPassController.text.trim()){
                        Fluttertoast.showToast(msg: 'password doesnot matched',);
                    }
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>CongratsScreen()));

                  }, label: 'Update Password', color: Colors.blue, txtColor: Colors.white,icon: Icons.update,))
            ],
          ),
        ),
      ),
      backgroundColor:CustomColor.kAppBackground,
    );
  }
}

