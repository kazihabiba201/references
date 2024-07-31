import 'package:get/get.dart';

class HomeController extends GetxController{


  var count1 = 0;
  var count2 = 0;
  var count3 = 0;
  var count4 = 0.obs;
  var count5 = 0.obs;
  var count6 = 0.obs;

  void increment1(){
    count1++;

    update(['up1']);
  }

  void increment2(){
    count2++;

    update(['up2']);
  }

  void increment3(){
    count3++;

    update(['up3']);
  }

  void increment4(){
    count4++;


  }
  void increment5(){
    count5++;


  }

  void increment6(){
    count6++;


  }


}