import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:wellwise/presentation/widgets/total_score_indicator.dart';

class ScoreBreakdownIndicators extends StatelessWidget {
  const ScoreBreakdownIndicators({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width < 500
              ? MediaQuery.of(context).size.height * 0.225
              : 250,
          child: const TotalScoreIndicator(),
        ),
        Column(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: SfRadialGauge(
                axes: [
                  RadialAxis(
                    interval: 1,
                    showLabels: false,
                    startAngle: -90,
                    endAngle: -90,
                    showTicks: false,
                    axisLineStyle: const AxisLineStyle(
                      color: Colors.white,
                      thickness: 0.3,
                      thicknessUnit: GaugeSizeUnit.factor,
                    ),
                    pointers: const [
                      RangePointer(
                        value: 40,
                        width: 0.3,
                        sizeUnit: GaugeSizeUnit.factor,
                        gradient: SweepGradient(
                          colors: <Color>[Color(0xFF1EFFD7), Color(0xFF008080)],
                          stops: <double>[
                            0.25,
                            0.75,
                          ],
                        ),
                      ),
                    ],
                    annotations: const [
                      GaugeAnnotation(
                        axisValue: 50,
                        positionFactor: 0.2,
                        widget: Text(
                          '40%',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(6),
            const Text(
              'Hydration',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ],
    );
  }
}
