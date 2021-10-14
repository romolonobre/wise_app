import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wise/application/modules/module.dart';
import 'package:wise/modules/home_page/home_bindings.dart';
import 'package:wise/modules/home_page/home_page.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBindings(),
    )
  ];
}
