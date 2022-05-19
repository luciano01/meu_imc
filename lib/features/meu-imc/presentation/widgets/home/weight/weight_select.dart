import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';

class WeightSelect extends StatelessWidget {
  const WeightSelect({
    Key? key,
    required this.weight,
    required this.onChanged,
  }) : super(key: key);

  final double weight;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppConstants.whatWeight, style: AppStyles.normal16),
        const SizedBox(height: 20),
        SizedBox(
          width: 150,
          child: TextFormField(
            initialValue: weight.toStringAsFixed(2),
            onChanged: onChanged,
            keyboardType: TextInputType.number,
            style: AppStyles.semiBold36,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
