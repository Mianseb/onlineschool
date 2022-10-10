import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/update_profile.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        backgroundColor:CustomColor.kAppBackground,
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: 15.w,vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: IconButton(onPressed: (){
                  Get.back();
                }, icon: Icon(Icons.arrow_back,size: 25,),
                    alignment:Alignment.topLeft
                ),
              ),
              Container(
                height: 100.h,
                width: double.infinity,

                padding: EdgeInsets.all(10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundImage: NetworkImage('https://www.kollywoodupdate.com/files/news/1617851797_dummy-man.png'),
                    ),
                    SizedBox(width: 5.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Mian Sami Ullah'),
                      ],),
                    Spacer(),
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>UpdateProfile()));
                    }, icon:Icon(FontAwesomeIcons.penSquare),),

                  ],
                ),
              ),

              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text('Email Address'),
                subtitle: Text('mianofficial@gmail.com'),
              ),
              Divider(color: Colors.grey,),
              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.phone_android),
                title: Text('Mobile Number'),
                subtitle: Text('03159282004'),
              ),
              Divider(color: Colors.grey,),
              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.location_city_outlined),
                title: Text('My Address'),
                subtitle: Text('GhazChowk Phandu Peshawar'),
              ),
              Divider(color: Colors.grey,),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){},
                child: Row(
                  children: [
                    Icon(CupertinoIcons.square_arrow_left_fill,color: Colors.red,),
                    SizedBox(width: 5.w,),
                    Text('Account Logout',style:TextStyle(color: Colors.red,fontSize:16,fontWeight: FontWeight.w600),)
                  ],
                ),
              )

            ],
          ),
        )
    ));
  }
}
