import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TotalScoreIndicator extends StatelessWidget {
  const TotalScoreIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      animationDuration: 3000,
      axes: [
        RadialAxis(
          showLabels: false,
          tickOffset: 10,
          interval: 6,
          majorTickStyle: const MajorTickStyle(
            length: 2,
            color: Color(0xff1EFFD7),
          ),
          minorTickStyle: const MinorTickStyle(
            length: 2,
            color: Color(0xff1EFFD7),
          ),
          axisLineStyle: const AxisLineStyle(
            thickness: 0.13,
            thicknessUnit: GaugeSizeUnit.factor,
            color: Colors.white,
          ),
          pointers: const [
            RangePointer(
              value: 40,
              width: 0.13,
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
              positionFactor: 0.32,
              widget: Text(
                'Total Score',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            GaugeAnnotation(
              axisValue: 50,
              positionFactor: 0,
              widget: Text(
                '40%',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
