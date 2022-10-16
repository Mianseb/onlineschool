import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
class CustomSchoolContainer extends StatelessWidget {
   String sTitle;
   String address;
   String image;
   final VoidCallback onPressed;
   CustomSchoolContainer({Key? key,required this.image,required this.sTitle,required this.address,required this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: onPressed,
                child: Container(
                  decoration: BoxDecoration(
                    color: CustomColor.kWhite,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            image,
                            height: 60.h,
                          )),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sTitle,
                              style: CustomTextStyles.kMedium12,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              address,
                              style: CustomTextStyles.kMedium12
                                  .copyWith(color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
        Positioned(
          right: 0.w,
          top: 37.h,
          child: Container(
          height: 25.h,
          width: 25.w,
          decoration: BoxDecoration(
            color:CustomColor.kDarkBblue,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Icon(Icons.keyboard_arrow_right,color: Colors.white,),


        ),)
      ],
    );
  }
}
