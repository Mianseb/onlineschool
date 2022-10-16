import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/school_detail_screen.dart';
import 'package:onlineschool/app/widgets/custom_drawer.dart';
import 'package:onlineschool/app/widgets/custom_school_container.dart';
import 'package:onlineschool/app/widgets/custom_textform_field.dart';

class ParentHomeScreen extends StatefulWidget {
  const ParentHomeScreen({Key? key}) : super(key: key);

  @override
  State<ParentHomeScreen> createState() => _ParentHomeScreenState();
}

class _ParentHomeScreenState extends State<ParentHomeScreen> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.kLightBackground,
        foregroundColor: CustomColor.kDarkBblue,
        title: Text('Welcome Mian!'),
        centerTitle: true,
      ),
      drawer: Drawer(child: CustomDrawer()),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find Your\nNearest School',
                    style: CustomTextStyles.kMedium16,
                  ),
                  Image.asset(
                    'assets/images/world.png',
                    height: 60.h,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextFormField(
                          isPasswordField: false,
                          controller: searchController,
                          hintText: 'Search School',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          validator: (value) {},
                          isSearchField: true)),
                ],
              ),
              Divider(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'All Schools List',
                style: CustomTextStyles.kMedium10.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w600),
              ),
              CustomSchoolContainer(
                image: 'assets/images/world.png',
                sTitle: 'Arsalan Model high School and college',
                address: 'phandu Chowk Peshawar',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>SchoolDetailScreen()));
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
