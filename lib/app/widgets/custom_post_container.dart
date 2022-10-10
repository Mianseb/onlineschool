import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomAddContainer extends StatelessWidget {
  final String image;
  final String name;
  final String detail;
  final IconData icon;
  final String? type;
  final Color typeColor;
  final VoidCallback onPressed;
  const CustomAddContainer({Key? key, required this.image,required this.name,required this.detail,required this.icon,  this.type,required this.typeColor, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 1,color: Color(0xFFF5F5F5)),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(image,fit: BoxFit.cover,height: 60,)),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Column(
                      children: [
                        Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text(detail,style: TextStyle(color: Color(0xFFf9f8f8),fontSize: 12),)
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(icon,color: Colors.white,),
                      SizedBox(height: 3,),
                      Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 50,
                        decoration: BoxDecoration(

                            color: typeColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(type!,style: TextStyle(color: Colors.white,fontSize: 9.h,fontWeight: FontWeight.bold),),
                      )
                    ],
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
