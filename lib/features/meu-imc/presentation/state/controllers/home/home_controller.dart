import 'package:get/get.dart';

import '../../../../../features.dart';

class HomeController extends GetxController {
  final _imc = ImcModel.empty().obs;
  final ageLimit = 150;

  ImcModel get imc => _imc.value;

  void changeGender(bool value) {
    _imc.update((model) {
      model!.isMale = value;
    });
  }

  void changeAge(int value) {
    _imc.update((model) {
      model!.age = value;
    });
  }

  void changeHeight(double value) {
    _imc.update((model) {
      model!.height = value;
    });
  }

  void changeWeight(String value) {
    _imc.update((model) {
      model!.weight = double.tryParse(value) ?? 0;
    });
  }

  void calculateImc() {
    if (imc.age >= 18) {
      _imc.update((model) {
        model!.result = imc.weight / (imc.height * imc.height);
      });
    }
  }
}
