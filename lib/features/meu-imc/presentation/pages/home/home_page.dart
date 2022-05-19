import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/core.dart';
import '../../../../features.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _scrollController = FixedExtentScrollController(initialItem: 35);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.titleHomePage),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.dark_mode_outlined),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {},
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.calculate_outlined),
          label: const Text(AppConstants.calculateBMI),
          onPressed: () {
            controller.calculateImc();
          },
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          physics: const BouncingScrollPhysics(),
          children: [
            Obx(() {
              return GenderSelect(
                isMale: controller.imc.isMale,
                onTap: () => controller.changeGender(!controller.imc.isMale),
              );
            }),
            const SizedBox(height: 30),
            Obx(() {
              return AgeSelect(
                ageLimit: controller.ageLimit,
                ageSelected: controller.imc.age,
                onSelectedItemChanged: (value) => controller.changeAge(value),
                scrollController: _scrollController,
              );
            }),
            Obx(() {
              return HeightSelect(
                height: controller.imc.height,
                onChanged: (value) => controller.changeHeight(value),
              );
            }),
            const SizedBox(height: 20),
            Obx(() {
              return WeightSelect(
                weight: controller.imc.weight,
                onChanged: (value) => controller.changeWeight(value),
              );
            }),
          ],
        ),
      );
    });
  }
}
