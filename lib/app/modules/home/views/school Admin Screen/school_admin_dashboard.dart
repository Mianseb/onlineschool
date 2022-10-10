import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineschool/app/modules/home/views/school%20Admin%20Screen/admin_personal_post_screen.dart';
import 'package:onlineschool/app/modules/home/views/school%20Admin%20Screen/all_schools_screen.dart';
class SchoolAdminScreen extends StatefulWidget {
  const SchoolAdminScreen({Key? key}) : super(key: key);

  @override
  State<SchoolAdminScreen> createState() => _SchoolAdminScreenState();
}

class _SchoolAdminScreenState extends State<SchoolAdminScreen>{
  TabController? _tabController;
  @override
  void initState() {
    super.initState();

  }
  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blueGrey,
                  Colors.white
                ]
              )
            ),
          ),
          title: Text('School Admin Dashboard',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
          centerTitle: true,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(text: 'Timeline Post',),
              Tab(text: 'Your Post',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TimelinePost(),
            AdminPersonalPost(),

          ],
          controller: _tabController,
        ),
        backgroundColor: const Color(0xFFEEF2F5),
      ),
    );
  }
}
