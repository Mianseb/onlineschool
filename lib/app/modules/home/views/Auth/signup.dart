import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/images_path.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/widgets/custom_textform_field.dart';
import 'package:onlineschool/app/widgets/primary_button.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController passC = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController confC = TextEditingController();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.kLightBackground,
        centerTitle: true,
        foregroundColor: CustomColor.kDarkBblue,
        // title: Text('Sign Up',style: CustomTextStyles.kBold14.copyWith(color: CustomColor.kDarkBblue,),
        // ),
      ),
      body: ListView(
        padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 10.h),
        children: [
          SizedBox(height: 10.h),
          //Profile Avatar
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                CircleAvatar(
                  radius: 55.r,
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
                Positioned(
                  bottom: -17.h,
                  child: Container(
                    height: 38.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                        color: CustomColor.kPrimary,
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: CustomColor.kWhite, width: 2.w)),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(CustomAssets.kcamera)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.h),
          //Info
          Text('Full Name',
              style: CustomTextStyles.kBold10
                  .copyWith(color: CustomColor.kDarkBblue)),
          SizedBox(height: 8.h),
          CustomTextFormField(
            controller: _nameController,
            isPasswordField: false,
            hintText: 'Mian',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            validator: (value) {},
            isSearchField: false,
          ),
          SizedBox(height: 15.h),
          Text('E-Mail',
              style: CustomTextStyles.kBold10
                  .copyWith(color: CustomColor.kDarkBblue)),
          SizedBox(height: 10.h),
          CustomTextFormField(
            controller: _emailController,
            isPasswordField: false,
            hintText: 'mian03@gmail.com',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {},
            isSearchField: false,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text('Phone',
              style: CustomTextStyles.kBold10
                  .copyWith(color: CustomColor.kDarkBblue)),
          SizedBox(height: 8.h),
          CustomTextFormField(
              controller: _emailController,
              isPasswordField: false,
              hintText: '+923159282004',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {},
              isSearchField: false),
          SizedBox(
            height: 10.h,
          ),
          Text('Password',
              style: CustomTextStyles.kBold10
                  .copyWith(color: CustomColor.kDarkBblue)),
          SizedBox(height: 10.h),
          CustomTextFormField(
              controller: passC,
              isPasswordField: true,
              hintText: 'password',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              validator: (value) {},
              isSearchField: false),
          SizedBox(height: 10.h),
          Text('Confirm Password',
              style: CustomTextStyles.kBold10
                  .copyWith(color: CustomColor.kDarkBblue)),
          SizedBox(height: 10.h),
          CustomTextFormField(
              controller: confC,
              isPasswordField: true,
              hintText: 'confirm password',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              validator: (value) {},
              isSearchField: false),

          SizedBox(height: 42.h),
          PrimaryButton(
              onPressed: () {},
              child: Text("Sign Up", style: CustomTextStyles.kBold14))
        ],
      ),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
