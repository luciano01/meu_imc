import 'package:get/get.dart';

import '../../features/meu-imc/presentation/pages/home/home.dart';
import '../core.dart';

/// All pages
class AppPages {
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
  ];
}
