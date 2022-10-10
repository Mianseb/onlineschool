import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlineschool/app/widgets/custom_button.dart';
import 'package:onlineschool/app/widgets/custom_textfield.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 40),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:Icon(Icons.arrow_back_ios,color: Colors.blueGrey,))),
              Center(child:Stack(
                children: [
                  Positioned(child: CircleAvatar(radius: 55.r,
                    backgroundColor: Color(0xFFebfafa),
                    backgroundImage:AssetImage('assets/images/person.jpg'),
                  )),
                  Positioned(
                    right: 15.w,
                    top: 100,
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEF2F5),
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: Icon(CupertinoIcons.camera),
                    ),
                  ),
                ],
              )

              ),
              SizedBox(height: 15.h,),
              CustomTextField(hintText: 'Student Name',prefixIcon: Icon(CupertinoIcons.person,),obsecureText: false,),
              SizedBox(height: 15.h,),
              CustomTextField(hintText: 'Email',prefixIcon: Icon(CupertinoIcons.mail,),obsecureText: false,),
              SizedBox(height: 15.h,),
              CustomTextField(hintText: 'Password',prefixIcon: Icon(CupertinoIcons.lock,),obsecureText: false,),
              SizedBox(height: 15.h,),
              CustomTextField(hintText: 'Confirm Password',prefixIcon: Icon(CupertinoIcons.lock,),obsecureText: false,),
              SizedBox(height: 20.h,),
              SizedBox(
                  width: double.infinity,
                  child: CustomButton(onPressed: (){}, label: 'Sign Up', color: Colors.blue, txtColor: Colors.white,icon: FontAwesomeIcons.arrowRight,)),
            ],
          ),
        ),
      ),
     // backgroundColor: const Color(0xFFEEF2F5),
        backgroundColor:Color(0xFFf9f8f8),
    );
  }
}
