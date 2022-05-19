class ImcModel {
  bool isMale;
  int age;
  double height;
  double weight;
  double result;

  ImcModel({
    required this.isMale,
    required this.age,
    required this.height,
    required this.weight,
    required this.result,
  });

  factory ImcModel.empty() {
    return ImcModel(
      isMale: true,
      age: 35,
      height: 1.75,
      weight: 72.50,
      result: 0.0,
    );
  }
}
