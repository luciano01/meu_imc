import 'package:get/get.dart';

import '../../features/features.dart';
import '../bindings/bindings.dart';
import '../core.dart';

/// All pages
class AppPages {
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
