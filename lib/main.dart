import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/app/routes/apps_routes.dart';
import 'package:getx_statemanagement/app/styles/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(

   initialRoute: AppRoutes.initialRoutes,
      getPages: AppRoutes.routes,
       darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: ThemeMode.dark,
      // title: 'GetX',
      // // theme: ThemeData(
      // //
      // //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // //   useMaterial3: true,
      // // ),
      // home: HomeScreen(),
    );
  }
}

