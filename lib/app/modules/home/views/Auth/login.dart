import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/modules/home/views/Auth/reset.dart';
import 'package:onlineschool/app/modules/home/views/Auth/signup.dart';
import 'package:onlineschool/app/modules/home/views/school%20Admin%20Screen/school_admin_dashboard.dart';
import 'package:onlineschool/app/widgets/custom_button.dart';
import 'package:onlineschool/app/widgets/custom_container.dart';
import 'package:onlineschool/app/widgets/custom_textfield.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  bool passObsecure = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        children: [
          Column(
            children: [
              Text(
                'Welcome!',
                style: TextStyle(
                    color: Color(0xFF0D4C89),
                    fontSize: 20.sp,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w800),
              ),
              Text('Sign in to Continue',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2)),
            ],
          ),
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.contain,
            width: double.infinity,
            height: 145.h,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                CustomTextField(
                    obsecureText: false,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Email',
                    prefixIcon: Icon(
                      CupertinoIcons.mail,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                    controller: passwordController,
                    obsecureText: passObsecure,
                    keyboardType: TextInputType.text,
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        passObsecure = !passObsecure;
                        setState(() {});
                      },
                      icon: Icon(passObsecure
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    prefixIcon: Icon(
                      CupertinoIcons.lock,
                    )),
                SizedBox(
                  height: 10.h,
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
            height: 15.h,
          ),
          CustomButton(
            onPressed: () {
              Get.to(SchoolAdminScreen());
            },
            label: 'Login',
            color: Colors.blue,
            //color: Color(0xFF354688),
            txtColor: Colors.white,
            icon: FontAwesomeIcons.arrowRight,
          ),
          SizedBox(height: 10.h),
          Center(
            child: Text(
              '-- Don\'t have an account --',
              style: TextStyle(
                  color: Color(0xFF101E4E), fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                topColor: Colors.white,
                bottomColor: Color(0xFF3F4042),
                image: Image.asset('assets/images/school.jpg'),
                textColor: Color(0xFFC4C5C9),
                text: 'For School\nRegistration\nContact Us',
                onPressed: () async {
                  const url =
                      "https://wa.me/923159282004?text=Hello I am School Admin";
                  launchUrl(Uri.parse(url),
                      mode: LaunchMode.externalApplication);
                },
              ),
              CustomContainer(
                topColor: Colors.white,
                bottomColor: Color(0xFF3F4042),
                image: Image.asset('assets/images/signup.jpg'),
                textColor: Color(0xFFC4C5C9),
                text: 'Student or Parents\n Sign Up Here',
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SignUpScreen()));
                },
              ),
            ],
          ),
        ],
      ),
      //backgroundColor: const Color(0xFFEEF2F5),
      backgroundColor: CustomColor.kAppBackground,
    ));
  }
}
// Padding(
//                 padding: const EdgeInsets.only(right: 80),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                       child:Row(
//                         children: [
//                           SvgPicture.asset('assets/images/whatsapp.svg',height: 50,),
//                           Text(' Register School Here'),
//                         ],
//                       )
//                 ),
//               ),
