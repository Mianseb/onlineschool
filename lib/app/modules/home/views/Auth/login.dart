import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/modules/home/views/Auth/reset.dart';
import 'package:onlineschool/app/modules/home/views/Auth/signup.dart';
import 'package:onlineschool/app/modules/home/views/school%20Admin%20Screen/admin_homescreen.dart';
import 'package:onlineschool/app/widgets/custom_textform_field.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/images_path.dart';
import '../../../../widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  var emailC = TextEditingController();
  var passwordController = TextEditingController();
  bool passObsecure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.kLightBackground,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                  color: CustomColor.kRichButton,
                  fontSize: 20.sp,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w600),
            ),
            Text('Sign in to Continue',
                style: TextStyle(
                    color: CustomColor.kGrey,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1)),
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.contain,
              width: double.infinity,
              height: 140.h,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
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
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    isPasswordField: true,
                    hintText: 'Password',
                    textInputAction: TextInputAction.newline,
                    keyboardType: TextInputType.text,
                    validator: (value) {},
                    isSearchField: false,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ForgotScreen()));
                    },
                    child: Text('Forget Password')),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.center,
              child: PrimaryButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SchoolAdminScreen()));
                },
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Get.to(() => SignUpScreen());
                },
                child: Text.rich(
                  TextSpan(
                    style: CustomTextStyles.kMedium12.copyWith(
                      color: CustomColor.kGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Don’t have  an account? ',
                      ),
                      TextSpan(
                        text: ' Sign Up',
                        style: CustomTextStyles.kMedium12.copyWith(
                          color: CustomColor.kRichButton,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Align(
              alignment: Alignment.center,
              child: PrimaryButton(
                color: CustomColor.kWhite,
                onPressed: () {
                  const url =
                      "https://wa.me/923159282004?text=Hello I am School Admin";
                  launchUrl(Uri.parse(url),
                      mode: LaunchMode.externalApplication);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      CustomAssets.kWhatsapp,
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
                    Text(
                      'For School Registration Contact Us',
                      style: CustomTextStyles.kBold12.copyWith(
                          color: CustomColor.kDarkTextColor, fontSize: 13),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
