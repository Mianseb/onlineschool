import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/congrats_screen.dart';
import 'package:onlineschool/app/widgets/primary_button.dart';

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
      appBar: AppBar(
        elevation: 0,
        foregroundColor: CustomColor.kDarkBblue,
        backgroundColor: CustomColor.kLightBackground,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reset Password',
              style: CustomTextStyles.kMedium16,
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              controller: currPassController,
              obscureText: obsur,
              obscuringCharacter: '●',
              decoration: InputDecoration(
                label: Text('Current Password'),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              controller: newPassController,
              obscureText: obsur,
              obscuringCharacter: '●',
              decoration: InputDecoration(
                label: Text('New Password'),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              controller: confPassController,
              obscureText: obsur,
              obscuringCharacter: '●',
              decoration: InputDecoration(
                  label: Text('Confirm Password'),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obsur = !obsur;
                        });
                      },
                      icon: obsur
                          ? Icon(
                              Icons.visibility_off,
                            )
                          : Icon(Icons.visibility))),
            ),
            SizedBox(
              height: 15.h,
            ),
            PrimaryButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CongratsScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Save Changes'),
                    SizedBox(
                      width: 3.w,
                    ),
                    Icon(Icons.update_outlined),
                  ],
                ))
          ],
        ),
      ),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
