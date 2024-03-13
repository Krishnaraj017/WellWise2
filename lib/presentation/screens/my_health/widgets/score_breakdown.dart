import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:wellwise/presentation/widgets/total_score_indicator.dart';

final Map subIndicatorList = {
  90: 'hydration',
  70: 'Nutrition',
  80: 'Sleep',
  86: 'Work'
};

class ScoreBreakdownIndicators extends StatelessWidget {
  const ScoreBreakdownIndicators({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width < 500
              ? MediaQuery.of(context).size.height * 0.225
              : 250,
          child: const TotalScoreIndicator(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 390 ? 200 : 100,
          width: MediaQuery.of(context).size.width,
          child: Align(
            alignment: Alignment.center,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width < 390 ? 2 : 4,
                mainAxisExtent: 100,
              ),
              itemBuilder: (context, index) => _SubScoreIndicator(
                percent: subIndicatorList.keys.elementAt(index),
                title: subIndicatorList.values.elementAt(index),
              ),
              itemCount: subIndicatorList.length,
            ),
          ),
        ),
      ],
    );
  }
}

class _SubScoreIndicator extends StatelessWidget {
  const _SubScoreIndicator({
    this.percent,
    this.title,
  });

  final double? percent;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                pointers: [
                  RangePointer(
                    value: percent ?? 0,
                    width: 0.3,
                    sizeUnit: GaugeSizeUnit.factor,
                    gradient: const SweepGradient(
                      colors: <Color>[Color(0xFF1EFFD7), Color(0xFF008080)],
                      stops: <double>[
                        0.25,
                        0.75,
                      ],
                    ),
                  ),
                ],
                annotations: [
                  GaugeAnnotation(
                    axisValue: 50,
                    positionFactor: 0.15,
                    widget: Text(
                      '${percent.toString()}%',
                      style: const TextStyle(
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
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
