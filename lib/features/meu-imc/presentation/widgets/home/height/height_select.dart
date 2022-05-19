import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';

class HeightSelect extends StatelessWidget {
  const HeightSelect({
    Key? key,
    required this.height,
    required this.onChanged,
  }) : super(key: key);

  final double height;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppConstants.whatHeight, style: AppStyles.normal16),
        const SizedBox(height: 20),
        Text(
          height.toStringAsFixed(2),
          style: AppStyles.semiBold36,
        ),
        Slider(
          activeColor: AppColors.blue100,
          thumbColor: AppColors.blue100,
          autofocus: true,
          value: height,
          min: 0.50,
          max: 3.00,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
