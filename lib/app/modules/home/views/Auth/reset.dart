import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/widgets/custom_textform_field.dart';
import 'package:onlineschool/app/widgets/primary_button.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({Key? key}) : super(key: key);
  var emailC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.kLightBackground,
        foregroundColor: CustomColor.kDarkBblue,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: SvgPicture.asset(
                'assets/images/forget.svg',
                height: 160.h,
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
                  style: CustomTextStyles.kMedium12
                      .copyWith(fontWeight: FontWeight.w400)),
              SizedBox(
                height: 30.h,
              ),
              CustomTextFormField(
                controller: emailC,
                isPasswordField: false,
                hintText: 'Email',
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {},
                isSearchField: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              PrimaryButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Reset'),
                      SizedBox(
                        width: 2.w,
                      ),
                      Icon(Icons.lock_reset_outlined)
                    ],
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
