import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/core.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu IMC',
      getPages: AppPages.routes,
      initialRoute: Routes.home,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.blue100,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: AppColors.blue50,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.blue100,
          foregroundColor: AppColors.blueGrey900,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
    );
  }
}
