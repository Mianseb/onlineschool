import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color color;
  final Color txtColor;
  final IconData? icon;
  const CustomButton({Key? key, required this.onPressed,required this.label,required this.color,required  this.txtColor
    ,this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 180,

        decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.circular(20),


        ),
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,),
            SizedBox(width: 5,),
            Text(label,style: TextStyle(color: txtColor,fontWeight: FontWeight.bold),),
          ],
        )),
      ),
    );
  }
}

