import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';

class AgeSelect extends StatelessWidget {
  const AgeSelect({
    Key? key,
    required this.scrollController,
    required this.onSelectedItemChanged,
    required this.ageLimit,
    required this.ageSelected,
  }) : super(key: key);

  final ScrollController scrollController;
  final void Function(int)? onSelectedItemChanged;
  final int ageLimit;
  final int ageSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppConstants.whatAge, style: AppStyles.normal16),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView(
                itemExtent: 75,
                controller: scrollController,
                magnification: 2.0,
                onSelectedItemChanged: onSelectedItemChanged,
                children: List.generate(
                  ageLimit + 1,
                  (age) {
                    return RotatedBox(
                      quarterTurns: 1,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        alignment: Alignment.center,
                        child: Text(
                          '$age',
                          style: TextStyle(
                            fontSize: ageSelected == age ? 36 : 28,
                            color: ageSelected == age
                                ? AppColors.blueGrey900
                                : AppColors.blue100,
                            fontWeight: ageSelected == age
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
