import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/parent_home_screen.dart';
import 'package:onlineschool/app/widgets/primary_button.dart';

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
              SizedBox(height: 20.h,),
              Text('Congratulation!!!',style: CustomTextStyles.kMedium16,),
              SizedBox(height: 10.h,),
              Text('Your password has been changed sucessfully',style: CustomTextStyles.kMedium12.copyWith(fontWeight: FontWeight.w100,color: Colors.blueGrey),),
              SizedBox(height: 20.h,),
              PrimaryButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>ParentHomeScreen()), (route) => false);
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Goto HomeScreen'),
                  SizedBox(width: 3.w,),
                  Icon(Icons.forward_outlined)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
