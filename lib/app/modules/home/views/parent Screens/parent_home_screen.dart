import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/widgets/custom_drawer.dart';
import 'package:onlineschool/app/widgets/custom_search.dart';
class ParentHomeScreen extends StatefulWidget {
  const ParentHomeScreen({Key? key}) : super(key: key);

  @override
  State<ParentHomeScreen> createState() => _ParentHomeScreenState();
}

class _ParentHomeScreenState extends State<ParentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF374659),
        title: Text('Welcome Mian!'),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: CustomDrawer()
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Find Your\nNearest School',style: CustomTextStyle.kHeading,),
                  Image.asset('assets/images/world.png',height: 60.h,),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomSearch(color: CustomColor.kBackground, hintText: 'Search School',),
              Divider(),
              SizedBox(height: 20.h,),
              Text('All Schools List',style: CustomTextStyle.kHeading.copyWith(fontSize: 18),),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h,),

                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5E0BA),
                            //color: Color(0xFF#F6F6F6),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: Image.asset('assets/images/world.png',height: 60.h,)),
                              SizedBox(width: 5,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('Arsalan Model School',style: CustomTextStyle.kHeading.copyWith(fontSize: 16),),
                                    SizedBox(height: 5.h,),
                                    Text('Phandu Chowk Peshawar',style: CustomTextStyle.kSmallText.copyWith(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5E0BA),
                            //color: Color(0xFF#F6F6F6),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: Image.asset('assets/images/world.png',height: 60.h,)),
                              SizedBox(width: 5,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('Arsalan Model School',style: CustomTextStyle.kHeading.copyWith(fontSize: 16),),
                                    SizedBox(height: 5.h,),
                                    Text('Phandu Chowk Peshawar',style: CustomTextStyle.kSmallText.copyWith(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5E0BA),
                            //color: Color(0xFF#F6F6F6),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: Image.asset('assets/images/world.png',height: 60.h,)),
                              SizedBox(width: 5.w,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('Arsalan Model School',style: CustomTextStyle.kHeading.copyWith(fontSize: 16),),
                                    SizedBox(height: 5.h,),
                                    Text('Phandu Chowk Peshawar',style: CustomTextStyle.kSmallText.copyWith(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5E0BA),
                            //color: Color(0xFF#F6F6F6),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: Image.asset('assets/images/world.png',height: 60.h,)),
                              SizedBox(width: 5,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('Arsalan Model School',style: CustomTextStyle.kHeading.copyWith(fontSize: 16),),
                                    SizedBox(height: 5.h,),
                                    Text('Phandu Chowk Peshawar',style: CustomTextStyle.kSmallText.copyWith(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5E0BA),
                            //color: Color(0xFF#F6F6F6),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: Image.asset('assets/images/world.png',height: 60.h,)),
                              SizedBox(width: 5,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('Arsalan Model School',style: CustomTextStyle.kHeading.copyWith(fontSize: 16),),
                                    SizedBox(height: 5.h,),
                                    Text('Phandu Chowk Peshawar',style: CustomTextStyle.kSmallText.copyWith(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
      backgroundColor:CustomColor.kAppBackground,
      );


  }
}
