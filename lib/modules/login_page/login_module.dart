import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wise/application/modules/module.dart';
import 'package:wise/modules/login_page/login_bindings.dart';
import 'package:wise/modules/login_page/login_page.dart';

///  As we create MODULE all PAGE Modules will implements MODULE,
/// that will help us to organize the screen navigation.
/// As we implements MODULE we have to create a @override.
/// We have to call it on main.dart in the PageRoutes.

class LoginModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
        name: "/loginPage",
        page: () => const LoginPage(),
        binding: LoginBindings())
  ];
}
