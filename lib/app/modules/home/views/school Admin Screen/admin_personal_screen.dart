import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/modules/home/models/post_model.dart';
import 'package:onlineschool/app/modules/home/views/school%20Admin%20Screen/admin_post_screen.dart';
import 'package:onlineschool/app/widgets/custom_container.dart';
import 'package:onlineschool/app/widgets/custom_school_container.dart';

class AdminPersonalPost extends StatefulWidget {
  const AdminPersonalPost({Key? key}) : super(key: key);

  @override
  State<AdminPersonalPost> createState() => _AdminPersonalPostState();
}

class _AdminPersonalPostState extends State<AdminPersonalPost> {
  List<PostModel> list = postModel
      .where((element) => element.userType == UserType.personal)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CustomSchoolContainer(
                  image: list[index].image,
                  sTitle: list[index].title,
                  address: list[index].detail,
                  onPressed: () {});
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: list.length),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColor.kPrimary,
        onPressed: () {
          Get.to(AdminPostScreen());
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
