import 'package:get/get.dart';
import 'package:getx_statemanagement/app/module/home/binding/home_binding.dart';
import 'package:getx_statemanagement/app/module/home/view/real_home.dart';

class AppRoutes{

  static const String initialRoutes = '/home';

  static final routes = [

    // GetPage(name: '/home', page: ()=> const HomeScreen(), binding: HomeBinding())

    GetPage(name: '/home', page: ()=> const RealHomeView(), binding: HomeBinding())
  ];
}