import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:onlineschool/app/data/colors.dart';
import 'package:onlineschool/app/data/typography.dart';
import 'package:onlineschool/app/modules/home/views/parent%20Screens/parent_home_screen.dart';
import 'package:onlineschool/app/widgets/custom_button.dart';
import 'package:onlineschool/app/widgets/custom_textfield.dart';

class AdminPostScreen extends StatefulWidget {
  const AdminPostScreen({Key? key}) : super(key: key);

  @override
  State<AdminPostScreen> createState() => _AdminPostScreenState();
}

class _AdminPostScreenState extends State<AdminPostScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController loadingController;
  //File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf', 'doc']);

    if (file != null) {
      setState(() {
        //_file = File(file.files.single.path!);
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
        backgroundColor: Color(0xFF374659),
        title: Text('School Admin Post Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                      color: CustomColor.kBackground,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.camera_alt_outlined,size: 50,),
                          Text('Add School Picture',style: CustomTextStyle.kSmallText.copyWith(color: Colors.grey,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    hintText: 'School Name',
                    obsecureText: false,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    hintText: 'Address',
                    obsecureText: false,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text('\tAdd Student', style: CustomTextStyle.kHeading),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Container(
                          height: 120.h,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color: CustomColor.kBackground,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt_outlined,size: 50,),
                                Text('Add Student Picture',style: CustomTextStyle.kSmallText.copyWith(color: Colors.grey,fontSize: 12),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextField(
                          hintText: 'Student Name',
                          obsecureText: false,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextField(
                          hintText: 'Student Marks',
                          obsecureText: false,
                        ),
                        SizedBox(height: 10,),
                        CustomButton(onPressed: (){}, label: 'Add Record', color: CustomColor.kBlue, txtColor: CustomColor.kWhite,icon: CupertinoIcons.add_circled,)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text('\tAdd Teacher', style: CustomTextStyle.kHeading),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Container(
                          height: 120.h,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color: CustomColor.kBackground,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt_outlined,size: 50,),
                                Text('Add Teacher Picture',style: CustomTextStyle.kSmallText.copyWith(color: Colors.grey,fontSize: 12),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextField(
                          hintText: 'Teacher Name',
                          obsecureText: false,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextField(
                          hintText: 'Teacher Qualification',
                          obsecureText: false,
                        ),
                        SizedBox(height: 10.h,),
                        CustomButton(onPressed: (){}, label: 'Add Record', color: CustomColor.kBlue, txtColor: CustomColor.kWhite,icon: CupertinoIcons.add_circled)

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text('Fee Structure', style: CustomTextStyle.kHeading),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Upload your file',
                    style: CustomTextStyle.kSmallText,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: selectFile,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(10),
                          dashPattern: [10, 4],
                          strokeCap: StrokeCap.round,
                          color: CustomColor.kDottedBlue,
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade50.withOpacity(.3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.folder_open_outlined,
                                    color: CustomColor.kBlue),
                                SizedBox(
                                  height: 15,
                                ),
                                Text('Select your file',
                                    style: CustomTextStyle.kSmallText
                                        .copyWith(color: Colors.grey.shade400)),
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
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        _platformFile!.name,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${(_platformFile!.size / 1024).ceil()} KB',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey.shade500),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          height: 5,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                height: 20,
                              ),
                              Center(
                                  child: CustomButton(
                                onPressed: () {},
                                label: 'Upload',
                                color: CustomColor.kBlue,
                                txtColor: CustomColor.kWhite,
                                icon: Icons.upload,
                              ))
                            ],
                          ))
                      : Container(),
                  SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ParentHomeScreen()));
                          },
                          label: 'Upload Data',
                          color: CustomColor.kBlue,
                          txtColor: CustomColor.kWhite,icon: FontAwesomeIcons.file,))
                ],
              ),
            )),
      ),
      //backgroundColor: const Color(0xFFEEF2F5),
      // backgroundColor: Color(0xFFf9f8f8),
    );
  }
}
