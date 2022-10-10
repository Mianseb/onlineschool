import 'package:flutter/material.dart';
class CustomContainer extends StatefulWidget {
  Color topColor;
  Color bottomColor;
  Color textColor;
  Image image;
  String text;
  final VoidCallback onPressed;


  CustomContainer({Key? key,required this.topColor, required this.bottomColor, required this.textColor, required this.image,required this.text,required this.onPressed}) : super(key: key);

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
            height: 100,
            width: 120,
            decoration: BoxDecoration(
                color: widget.topColor,
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
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            color: widget.bottomColor,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
          ),
          child: Text(widget.text,style: TextStyle(color:widget.textColor,fontWeight: FontWeight.w700,fontSize: 13),),
        ),
      ],
    );
  }
}
