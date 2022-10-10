import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String hintText ;
  final Widget? prefixIcon;
  final  Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool?  obsecureText;



  CustomTextField({Key? key,required this.hintText,  this.prefixIcon, this.suffixIcon,this.keyboardType, this.controller,  this.obsecureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xFFE8ECEF),
        //border: Border.all(color: Colors.grey,width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child:
      TextFormField(
        controller: controller,
        obscureText: obsecureText!,
        keyboardType:keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon:prefixIcon ,
          suffixIcon: suffixIcon,
        ),
      ),
    );

  }
}
