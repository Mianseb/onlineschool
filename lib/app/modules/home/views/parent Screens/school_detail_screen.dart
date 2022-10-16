import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/images_path.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/widgets/custom_container.dart';

class SchoolDetailScreen extends StatefulWidget {
  const SchoolDetailScreen({Key? key}) : super(key: key);

  @override
  State<SchoolDetailScreen> createState() => _SchoolDetailScreenState();
}

class _SchoolDetailScreenState extends State<SchoolDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.kLightBackground,
        foregroundColor: CustomColor.kDarkBblue,
        title: Text(
          'The Rose Cambridge high school',
          style: CustomTextStyles.kBold10.copyWith(
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
              height: 140.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.macalba.net/2010/12/20101218-sydneyUni--theQuadrangle.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Class 9th Students',
                  style: CustomTextStyles.kMedium12,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Marks:${'504'}/550',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Marks:${'504'}/550',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Marks:${'504'}/550',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Class 10th Students',
                  style: CustomTextStyles.kMedium12,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Marks:${'990'}/1100',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Marks:${'800'}/1100',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Marks:${'1000'}/1100',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Teachers Qualification',
                  style: CustomTextStyles.kMedium12,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Qualification:\n${'Bachelor in CS'}',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Qualification:\n${'Software Engineer'}',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      CustomContainer(
                        image: Image.network(
                            'https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/54433157_2067471710026800_8118987373544472576_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzm6Apmwng0qKRtUSfd1yeqCDGe826DvyoIMZ7zboO_IYi6x5Eq5qSninjUkqD_jjrvk-5NTQrhWJBQKkfMfgk&_nc_ohc=2d2H94mHHjIAX9fUTbX&_nc_ht=scontent.fisb3-2.fna&oh=00_AT9Ei2dYLYw-SNwZGgstkmQQ3hU77mjMNaEDMWWu-CCcjg&oe=6370549C'),
                        name: 'Mian Sami Ullah',
                        onPressed: () {},
                        child: Text(
                          'Qualification:\n${'PHD'}',
                          style: CustomTextStyles.kMedium12
                              .copyWith(color: CustomColor.kWhite),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Fee Structure',
                  style: CustomTextStyles.kMedium12,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    height: 80.h,
                    width: MediaQuery.of(context).size.width * .87,
                    decoration: BoxDecoration(
                      //color: Color(0xFFE4EAF6),
                      color: CustomColor.kAppBackground,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          CustomAssets.kPdf,
                          height: 40.h,
                        ),
                        Text(
                          'Get started.pdf',
                          style: CustomTextStyles.kMedium12,
                        ),
                        Icon(
                          Icons.downloading_outlined,
                          color: Color(0xFF98C7FE),
                          size: 27.h,
                        )
                      ],
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Location',
                  style: CustomTextStyles.kMedium12,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 140.h,
                  width: MediaQuery.of(context).size.width * .87,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(CustomAssets.kmap),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
