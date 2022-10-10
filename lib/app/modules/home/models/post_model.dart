enum UserType {all,personal}
class PostModel{
  String image;
  String title;
  String detail;
  UserType userType;


  PostModel(this.image, this.title, this.detail,this.userType);

}
List<PostModel> postModel =[
PostModel('assets/images/school.jpg', 'All School Admins', 'the Peshawar Model', UserType.all),
PostModel('assets/images/school.jpg', 'All School Admins', 'the Peshawar Model', UserType.personal),
PostModel('assets/images/school.jpg', 'All School Admins', 'the Peshawar Model', UserType.all),
PostModel('assets/images/school.jpg', 'All School Admins', 'the Peshawar Model', UserType.all),
];
