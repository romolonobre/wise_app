import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/modules/home_page/home_module.dart';
import 'package:wise/modules/initial_page/initial_page_module.dart';
import 'package:wise/modules/login_page/login_module.dart';
import 'package:wise/modules/send_page/send_module.dart';
import 'modules/splash_page/spash_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplasModule.SPLASH_SCREEN,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        ...SplasModule().routers,
        ...InitialPageModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...SendModule().routers,
      ],
    );
  }
}
