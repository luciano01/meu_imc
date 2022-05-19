// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';

class GenderSelect extends StatelessWidget {
  const GenderSelect({
    Key? key,
    required this.isMale,
    required this.onTap,
  }) : super(key: key);

  final bool isMale;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppConstants.whatGender, style: AppStyles.normal16),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: isMale ? AppColors.blueGrey900 : AppColors.blue100,
                      width: isMale ? 2 : 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male_outlined,
                        size: 56,
                        color:
                            isMale ? AppColors.blueGrey900 : AppColors.blue100,
                      ),
                      Text(
                        AppConstants.male,
                        style:
                            isMale ? AppStyles.semiBold18 : AppStyles.normal18,
                      ),
                    ],
                  ),
                ),
                onTap: onTap,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: isMale ? AppColors.blue100 : AppColors.blueGrey900,
                      width: isMale ? 1 : 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female_outlined,
                        size: 56,
                        color:
                            isMale ? AppColors.blue100 : AppColors.blueGrey900,
                      ),
                      Text(
                        AppConstants.female,
                        style:
                            isMale ? AppStyles.normal18 : AppStyles.semiBold18,
                      ),
                    ],
                  ),
                ),
                onTap: onTap,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
