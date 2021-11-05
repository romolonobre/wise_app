import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wise/application/modules/module.dart';
import 'package:wise/modules/send_page/send_page.dart';

class SendModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/send',
      page: () => const SendPage(),
    ),
  ];
}
