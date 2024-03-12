import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wellwise/presentation/screens/my_health/widgets/bmi_score_widget.dart';
import 'package:wellwise/presentation/widgets/heart_health.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class MyHealthPage extends StatefulWidget {
  const MyHealthPage({super.key});

  @override
  State<MyHealthPage> createState() => _MyHealthPageState();
}

class _MyHealthPageState extends State<MyHealthPage> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        const SliverAppBar(
          backgroundColor: Color(0xffF4F4F4),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeartHealth(size: 54.0),
              Gap(30.0),
              Text(
                'Wellwise',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    fontFamily: 'Poppins'),
              )
            ],
          ),
        )
      ],
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                height: 1.5,
                              ),
                              children: [
                                TextSpan(text: 'Find, '),
                                TextSpan(
                                  text: 'Track, ',
                                  style: TextStyle(
                                    color: Color(0xFF07CFAB),
                                  ),
                                ),
                                TextSpan(text: 'Analyse and '),
                                TextSpan(
                                  text: 'Stay healthy',
                                  style: TextStyle(
                                    color: Color(0xFF07CFAB),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(16),
                    const BmiScore(),
                    const Gap(20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            textAlign: TextAlign.left,
                            text: const TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                height: 1.5,
                              ),
                              children: [
                                TextSpan(text: 'Past '),
                                TextSpan(
                                  text: 'Health Score',
                                  style: TextStyle(
                                    color: Color(0xFF07CFAB),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(16),
                    Card(
                      color: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:  Container(
                        height: 240,
                        padding: const EdgeInsets.all(10),
                        child: const SfCartesianChart(
                          primaryXAxis: NumericAxis(
                            isVisible: false,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
