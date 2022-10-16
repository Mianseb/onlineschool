import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/images_path.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/parent_home_screen.dart';
import 'package:onlineschool/app/widgets/custom_textform_field.dart';
import 'package:onlineschool/app/widgets/primary_button.dart';

class AdminPostScreen extends StatefulWidget {
  const AdminPostScreen({Key? key}) : super(key: key);

  @override
  State<AdminPostScreen> createState() => _AdminPostScreenState();
}

class _AdminPostScreenState extends State<AdminPostScreen>
    with SingleTickerProviderStateMixin {
  var schoolNameC = TextEditingController();
  var addressC = TextEditingController();
  var studentName = TextEditingController();
  var marksC = TextEditingController();
  var TeacherNameC = TextEditingController();
  var QualificationC = TextEditingController();
  var locationC = TextEditingController();
  late AnimationController loadingController;
  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf', 'doc']);

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  File? image;

  imagePicker(ImageSource source) async {
    {
      final pickedImage = await ImagePicker().pickImage(source: source);
      setState(() {
        if (pickedImage != null) {
          image = File(pickedImage.path);
        } else {
          debugPrint('NOTHING RETURN');
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.kLightBackground,
        foregroundColor: CustomColor.kDarkBblue,
        title: Text(
          'School Admin Post Screen',
          style: CustomTextStyles.kBold14,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 110.h,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Color(0xFFF0F2F5),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          CustomAssets.kcamera,
                          height: 35.h,
                          color: CustomColor.kGrey2,
                        ),
                        Text('Add School Picture',
                            style: CustomTextStyles.kMedium10),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                    controller: schoolNameC,
                    isPasswordField: false,
                    hintText: 'School Name',
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    isSearchField: false),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                    controller: schoolNameC,
                    isPasswordField: false,
                    hintText: 'School Name',
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    isSearchField: false),
                SizedBox(
                  height: 15.h,
                ),
                Text('\tAdd 9th Class Student',
                    style: CustomTextStyles.kMedium12),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Container(
                        height: 120.h,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F2F5),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                CustomAssets.kcamera,
                                height: 35.h,
                                color: CustomColor.kGrey2,
                              ),
                              Text('Add Student Picture',
                                  style: CustomTextStyles.kMedium10),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormField(
                          controller: schoolNameC,
                          isPasswordField: false,
                          hintText: 'Student Name',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.name,
                          validator: (value) {},
                          isSearchField: false),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormField(
                          controller: schoolNameC,
                          isPasswordField: false,
                          hintText: 'Student Marks',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.name,
                          validator: (value) {},
                          isSearchField: false),
                      SizedBox(
                        height: 10.h,
                      ),
                      PrimaryButton(onPressed: () {}, child: Text('Add Record'))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text('\tAdd 10th Class Student',
                    style: CustomTextStyles.kMedium12),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Container(
                        height: 120.h,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F2F5),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                CustomAssets.kcamera,
                                height: 35.h,
                                color: CustomColor.kGrey2,
                              ),
                              Text('Add Student Picture',
                                  style: CustomTextStyles.kMedium10),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormField(
                          controller: schoolNameC,
                          isPasswordField: false,
                          hintText: 'Student Name',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.name,
                          validator: (value) {},
                          isSearchField: false),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormField(
                          controller: schoolNameC,
                          isPasswordField: false,
                          hintText: 'Student Marks',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.name,
                          validator: (value) {},
                          isSearchField: false),
                      SizedBox(
                        height: 10.h,
                      ),
                      PrimaryButton(onPressed: () {}, child: Text('Add Record'))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text('\tAdd Teacher', style: CustomTextStyles.kMedium12),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Container(
                        height: 120.h,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F2F5),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                CustomAssets.kcamera,
                                height: 35.h,
                                color: CustomColor.kGrey2,
                              ),
                              Text('Add Teacher Picture',
                                  style: CustomTextStyles.kMedium10),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormField(
                          controller: schoolNameC,
                          isPasswordField: false,
                          hintText: 'Teacher Name',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.name,
                          validator: (value) {},
                          isSearchField: false),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormField(
                          controller: schoolNameC,
                          isPasswordField: false,
                          hintText: 'Teacher Qualification',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.name,
                          validator: (value) {},
                          isSearchField: false),
                      SizedBox(
                        height: 10.h,
                      ),
                      PrimaryButton(
                          onPressed: () {}, child: Text('Add Record')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text('Fee Structure',
                    style:
                        CustomTextStyles.kMedium12.copyWith(fontSize: 13.sp)),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Upload your file',
                  style: CustomTextStyles.kMedium10
                      .copyWith(color: Colors.grey, fontSize: 10.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: selectFile,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 35.w, vertical: 15.h),
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(10.r),
                        dashPattern: [10, 4],
                        strokeCap: StrokeCap.round,
                        color: CustomColor.kDottedBlue,
                        child: Container(
                          width: double.infinity,
                          height: 120.h,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50.withOpacity(.3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.folder_open_outlined,
                                  color: CustomColor.kBlue),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text('Select your file',
                                  style: CustomTextStyles.kMedium12
                                      .copyWith(color: Colors.grey)),
                            ],
                          ),
                        ),
                      )),
                ),
                _platformFile != null
                    ? Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Selected File',
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      offset: Offset(0, 1),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                    )
                                  ]),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      _platformFile!.name,
                                      style: TextStyle(
                                          fontSize: 10.sp, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '${(_platformFile!.size / 1024).ceil()} KB',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.grey.shade500),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Container(
                                        height: 5.h,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Colors.blue.shade50,
                                        ),
                                        child: LinearProgressIndicator(
                                          value: loadingController.value,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            PrimaryButton(
                                onPressed: () {}, child: Text('Upload'))
                          ],
                        ))
                    : Container(),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Add Current Location',
                  style: CustomTextStyles.kMedium12,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: CustomColor.kWhite,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    children: [
                      CustomTextFormField(
                          controller: locationC,
                          isPasswordField: false,
                          hintText: 'current location',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          validator: (value) {},
                          isSearchField: false),
                      Row(
                        children: [
                          Icon(
                            Icons.my_location,
                            color: CustomColor.kBlue,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text('Use Current location')),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                PrimaryButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ParentHomeScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Upload Data'),
                        SizedBox(
                          width: 2.w,
                        ),
                        SvgPicture.asset('assets/images/upgradeIcon.svg'),
                      ],
                    ))
              ],
            ),
          )),
      backgroundColor: CustomColor.kLightBackground,
    );
  }
}
