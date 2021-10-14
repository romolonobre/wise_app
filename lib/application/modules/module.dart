import 'package:get/route_manager.dart';

/// We create an abstract class $Module that will help to organize
/// the navigation between the pages. All Page Modules will implements
/// Module, it means all Page modules will need to @Override "abstract List<GetPage> routers;""

abstract class Module {
  abstract List<GetPage> routers;
}
