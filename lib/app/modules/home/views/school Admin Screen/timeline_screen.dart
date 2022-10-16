import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/modules/home/models/post_model.dart';
import 'package:onlineschool/app/widgets/custom_container.dart';
import 'package:onlineschool/app/widgets/custom_school_container.dart';

class TimelinePost extends StatefulWidget {
  const TimelinePost({Key? key}) : super(key: key);

  @override
  State<TimelinePost> createState() => _TimelinePostState();
}

class _TimelinePostState extends State<TimelinePost> {
  List<PostModel> list =
      postModel.where((element) => element.userType == UserType.all).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return CustomSchoolContainer(
                    image: list[index].image,
                    sTitle: list[index].title,
                    address: list[index].detail,
                    onPressed: () {});
              },
              separatorBuilder: (context, int) => SizedBox(
                    height: 15.h,
                  ),
              itemCount: list.length)),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
