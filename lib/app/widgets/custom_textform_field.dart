import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineschool/app/data/colors.dart';

import '../data/images_path.dart';
import '../data/typography.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPasswordField;
  final bool isSearchField;
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatter;
  CustomTextFormField({
    Key? key,
    this.inputFormatter,
    required this.controller,
    required this.isPasswordField,
    required this.hintText,
    required this.textInputAction,
    required this.keyboardType,
    required this.validator,
    required this.isSearchField,
    this.onChange,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

bool show = true;

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      inputFormatters: widget.inputFormatter,
      onChanged: widget.onChange,
      textInputAction: widget.textInputAction,
      obscureText: widget.isPasswordField ? show : false,
      keyboardType: widget.keyboardType,
      style: CustomTextStyles.kMedium12,
      decoration: InputDecoration(
        filled: true,
        errorStyle: CustomTextStyles.kMedium12
            .copyWith(color: CustomColor.kError, height: 0.5),
        prefixIcon:widget.isSearchField?
        Padding(
          padding:
          EdgeInsets.only(left: 25.w, right: 26.w, top: 17.h, bottom: 17.h),
          child: SvgPicture.asset(
            CustomAssets.ksearch,
          ),
        ):null,

        suffixIcon: widget.isPasswordField
            ? IconButton(
            onPressed: () {
              setState(() {
                show = !show;
              });
            },
            icon: (show
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility)))
            : const SizedBox(),
        hintText: widget.hintText,
        hintStyle: CustomTextStyles.kMedium12,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:
            BorderSide(color: CustomColor.kGrey2.withOpacity(0.2))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: CustomColor.kGrey2)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: CustomColor.kGrey2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: CustomColor.kPrimary, width: 1.5)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: CustomColor.kPrimary, width: 1.5)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: CustomColor.kError, width: 1.5)),
        fillColor: CustomColor.kLightBackground,
      ),
    );
  }
}

enum TextFormFieldStatus { error, success, normal }