import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BmiRadialIndicator extends StatelessWidget {
  const BmiRadialIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width < 500
                ? MediaQuery.of(context).size.height * 0.2
                : 250,
            child: SfRadialGauge(
              title: const GaugeTitle(
                text: 'Your BMI Score',
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              enableLoadingAnimation: true,
              animationDuration: 2000,
              axes: [
                RadialAxis(
                  showTicks: false,
                  // showFirstLabel: true,
                  // showLastLabel: true,
                  showLabels: false,
                  // interval: 40,
                  radiusFactor: 0.64,
                  minimum: 0,
                  maximum: 40,
                  canScaleToFit: true,
                  ranges: [
                    GaugeRange(
                      startValue: 0,
                      endValue: 18,
                      color: const Color(0xFFFE563B),
                      sizeUnit: GaugeSizeUnit.factor,
                      startWidth: 0.4,
                      endWidth: 0.4,
                    ),
                    GaugeRange(
                      startValue: 18,
                      endValue: 24,
                      color: const Color(0xFF41A152),
                      startWidth: 0.4,
                      endWidth: 0.4,
                      sizeUnit: GaugeSizeUnit.factor,
                    ),
                    GaugeRange(
                      startValue: 24,
                      endValue: 30,
                      color: const Color(0xFFFD9A08),
                      sizeUnit: GaugeSizeUnit.factor,
                      startWidth: 0.4,
                      endWidth: 0.4,
                    ),
                    GaugeRange(
                      startValue: 30,
                      endValue: 40,
                      color: const Color(0xFFF83761),
                      sizeUnit: GaugeSizeUnit.factor,
                      startWidth: 0.4,
                      endWidth: 0.4,
                    ),
                  ],
                  pointers: const [
                    MarkerPointer(
                      value: 22.2,
                      markerWidth: 10,
                      markerHeight: 16,
                      markerOffset: -18,
                      color: Color(0xFF1491EB),
                    ),
                  ],
                  annotations: [
                    GaugeAnnotation(
                      angle: 90,
                      positionFactor: 0.05,
                      widget: Text(
                        '22.2',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width < 350 ? 11 : 14,
                        ),
                      ),
                    ),
                    GaugeAnnotation(
                      angle: 90,
                      positionFactor:
                          MediaQuery.of(context).size.width < 350 ? 1.2 : 0.9,
                      widget: const Text(
                        'Normal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _HeightAndWeight(
                unit: 'cm',
                value: 178,
              ),
              _HeightAndWeight(
                unit: 'kg',
                value: 60,
              )
            ],
          )
        ],
      ),
    );
  }
}

class _HeightAndWeight extends StatelessWidget {
  const _HeightAndWeight({
    this.unit,
    this.value,
  });

  final String? unit;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '${value?.toString()} $unit\n',
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: unit == 'cm' ? 'Height' : 'Weight',
            style: const TextStyle(
              fontSize: 12.0,
              color: Color(0xff575153),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
