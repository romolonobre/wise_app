import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wise/application/modules/module.dart';
import 'package:wise/modules/splash_page/splahs_bindings.dart';
import 'package:wise/modules/splash_page/splash_screen.dart';

///  As we create MODULE all PAGE Modules will implements MODULE,
/// that will help us to organize the screen navigation.
/// As we implements MODULE we have to create a @override.

class SplasModule extends Module {
  static const SPLASH_SCREEN = '/';
  @override
  List<GetPage> routers = [
    GetPage(
      name: SPLASH_SCREEN,
      page: () => const SplashScreen(),
      binding: SplahsBindings(),
    )
  ];
}
