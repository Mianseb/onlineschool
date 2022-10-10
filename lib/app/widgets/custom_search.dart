import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomSearch extends StatelessWidget {
  final Color color;
  final String hintText;
  final Color? cursor;
  const CustomSearch({Key? key,required this.color,required this.hintText,this.cursor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.only(top: 10.h),
        height: MediaQuery.of(context).size.height*0.06,
        decoration: BoxDecoration(
            color:color,

            borderRadius: BorderRadius.circular(10.r)
        ),
        child: TextField(
          cursorColor: cursor,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 14),
              prefixIcon:Icon(CupertinoIcons.search,color: Colors.grey,),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none
              )
          ),
        ),
      );
  }
}
