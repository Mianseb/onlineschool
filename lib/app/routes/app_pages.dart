import 'package:get/get.dart';
import 'package:onlineschool/app/modules/home/views/Auth/login.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.Login;

  static final routes = [
    GetPage(
      name: _Paths.Login,
      page: () => LoginScreen(),
     // binding: HomeBinding(),
    ),
  ];
}
