import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlineschool/app/modules/home/views/Auth/change_password_screen.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/profile_screen.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/update_profile.dart';

import '../data/colors.dart';
class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF154360),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40.h,horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/319-3191274_male-avatar-admin-profile.png'),
                    ),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>UpdateProfile()));
                    }, icon: Icon(FontAwesomeIcons.penSquare,color:CustomColor.kWhite))
                  ],
                ),
                SizedBox(height: 10,),
                Text('Mian Sami Ullah',style: TextStyle(color: Colors.white,)),
                SizedBox(height: 5,),
                Text('mianofficial007@gmail.com',style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          Divider(color: Colors.grey,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                ListTile(
                  leading: Icon(Icons.person_outline,color: CustomColor.kWhite,),
                  title: Text('Your Profile',style: TextStyle(color: CustomColor.kWhite),),
                  trailing: Icon(Icons.arrow_forward,color: CustomColor.kWhite,),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfileScreen()));
                  },

                ),
                Divider(color: Colors.grey,),
                ListTile(
                  leading: Icon(Icons.lock_outline,color: CustomColor.kWhite,),
                  title: Text('Change Password',style: TextStyle(color: CustomColor.kWhite),),
                  trailing: Icon(Icons.arrow_forward,color: CustomColor.kWhite,),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>ChangePasswordScreen()));
                  },

                ),
                Divider(color: Colors.grey,),

                ListTile(
                  leading: Icon(FontAwesomeIcons.arrowRight,color: CustomColor.kWhite,),
                  title: Text('Logout',style: TextStyle(color: CustomColor.kWhite),),
                  //trailing: Icon(Icons.arrow_forward,color: CustomColor.kWhite,),

                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
