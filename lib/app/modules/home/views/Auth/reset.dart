import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineschool/app/widgets/custom_button.dart';
import 'package:onlineschool/app/widgets/custom_textfield.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 30.h),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blueGrey,
                        ))),
                Center(
                    child: SvgPicture.asset(
                  'assets/images/forget.svg',
                  height: 250.h,
                )),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Forgot\nPassword?',
                  style: TextStyle(
                      color: Color(0xFF101E4E),
                      fontWeight: FontWeight.w700,
                      fontSize: 20.h),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                    'Don\'t worry! It happens. Please enter the\naddress associated with your account.',
                    style: TextStyle(
                        color: Color(0xFF101E4E), fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextField(
                  hintText: 'Email ID',
                  prefixIcon: Icon(
                    CupertinoIcons.mail_solid,
                  ),
                  obsecureText: false,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.infinity,
                  child: CustomButton(
                    onPressed: () {},
                    label: 'Reset',
                    color: Colors.blue,
                    txtColor: Colors.white,
                    icon: Icons.lock_reset_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0xFFEEF2F5),
      ),
    );
  }
}
