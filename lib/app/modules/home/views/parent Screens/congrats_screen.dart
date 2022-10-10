import 'package:flutter/material.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/parent_home_screen.dart';
import 'package:onlineschool/app/widgets/custom_button.dart';
class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              Image.asset('assets/images/congrats.png'),
              SizedBox(height: 20,),
              Text('Congratulation!!!',style: CustomTextStyle.kHeading,),
              SizedBox(height: 10,),
              Text('Your password has been changed sucessfully',style: CustomTextStyle.kSmallText,),
              SizedBox(height: 20,),
              SizedBox(
                  width: double.infinity,
                  child: CustomButton(onPressed:(){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>ParentHomeScreen()), (route) => false);
                  } , label: 'CONTINUE TO HOMESCREEN', color: CustomColor.kBlue, txtColor: CustomColor.kWhite))
            ],
          ),
        ),
      ),
    );
  }
}
