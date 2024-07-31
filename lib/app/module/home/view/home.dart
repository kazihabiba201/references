import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/app/module/home/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
   const HomeScreen({super.key});
   //depend
   // final dependency = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
    body:  Column( mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GetBuilder<HomeController>(id: 'up1',//id need in GetBuilder
          builder: (controller) { print('update 1');
            return Center(child: Column(
              children: [
                Text(controller.count1.toString(), style: const TextStyle(fontSize: 40), ),
                const SizedBox(height: 10,),
                ElevatedButton(onPressed: controller.increment1, child: const Text('increment1'))
              ],
            ),);
          }
        ), const SizedBox(height: 10,),
        GetBuilder<HomeController>( id: 'up2',
            builder: (controller) {print('update 2');
              return Center(child: Column(
                children: [
                  Text(controller.count2.toString(), style: const TextStyle(fontSize: 40), ),
                  const SizedBox(height: 10,),
                  ElevatedButton(onPressed: controller.increment2, child: const Text('increment2'))
                ],
              ),);
            }
        ), const SizedBox(height: 10,),
        GetBuilder<HomeController>(id: 'up3',
            builder: (controller) {print('update 3');
              return Center(child: Column(
                children: [
                  Text(controller.count3.toString(), style: const TextStyle(fontSize: 40), ),
                  const SizedBox(height: 10,),
                  ElevatedButton(onPressed: controller.increment3, child: const Text('increment3'))
                ],
              ),);
            }
        ),
        GetX<HomeController>(  //id don't need in GetX
            builder: (controller) {print('update 4');
            return Center(child: Column(
              children: [
                Text(controller.count4.toString(), style: const TextStyle(fontSize: 40), ),
                const SizedBox(height: 10,),
                ElevatedButton(onPressed: controller.increment4, child: const Text('increment4'))
              ],
            ),);
            }
        ), GetX<HomeController>(
            builder: (controller) {print('update 5');
            return Center(child: Column(
              children: [
                Text(controller.count5.toString(), style: const TextStyle(fontSize: 40), ),
                const SizedBox(height: 10,),
                ElevatedButton(onPressed: controller.increment5, child: const Text('increment5'))
              ],
            ),);
            }
        ),
        Column(
          children: [
            Obx(()=> Text(controller.count6.toString(), style: const TextStyle(fontSize: 40), ),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: controller.increment6, child: const Text('increment6'))
          ],
        )
      ],
    ),

    );
  }
}
