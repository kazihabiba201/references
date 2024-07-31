import 'package:get/get.dart';
import 'package:getx_statemanagement/app/module/home/controller/home_controller.dart';
import 'package:getx_statemanagement/app/module/home/controller/real_home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>HomeController());
    Get.lazyPut(()=>RealHomeController());
  }




}