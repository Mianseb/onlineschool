import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomContainer extends StatefulWidget {
  Image image;
  String name;
  Widget child;
  final VoidCallback onPressed;


  CustomContainer({Key? key, required this.image,required this.name,required this.onPressed,required this.child}) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.onPressed,
          child: Container(
            height: 90.h,
            width: 120.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: widget.image.image,
                )
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 30.h,
          width: 120.w,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            //borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
          ),
          child: Text(widget.name,style: TextStyle(color:Colors.white,fontWeight: FontWeight.w700,fontSize: 13,overflow: TextOverflow.fade,),),
        ),
        SizedBox(
          width: 120.w,
          child: Divider(
            thickness: 1,
            height: 1,
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 30.h,
          width: 120.w,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
          ),
          child: widget.child,
        ),

      ],
    );
  }
}
