import 'package:flutter/material.dart';
import 'package:onlineschool/app/modules/home/models/post_model.dart';
import 'package:onlineschool/app/widgets/custom_container.dart';

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
        child:
        GridView.builder(
            itemCount: list.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return CustomContainer(
                  topColor: Colors.white,
                  bottomColor: Colors.blueGrey,
                  textColor: Colors.white,
                  image: Image.asset(list[index].image),
                  text: 'School Admins',
                  onPressed: () {});
            }),
      ),
      backgroundColor: const Color(0xFFEEF2F5),
    );
  }
}
