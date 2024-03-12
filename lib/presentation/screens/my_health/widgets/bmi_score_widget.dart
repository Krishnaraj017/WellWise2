import 'package:flutter/material.dart';
import 'package:wellwise/presentation/widgets/bmi_radial_indicator.dart';

class BmiScore extends StatelessWidget {
  const BmiScore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/images/humanBody.png',
                colorBlendMode: BlendMode.colorDodge,
              ),
            ),
            const BmiRadialIndicator(),
          ],
        ),
      ),
    );
  }
}
