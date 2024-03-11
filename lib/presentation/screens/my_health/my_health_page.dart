import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wellwise/presentation/widgets/heart_health.dart';

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
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeartHealth(size: 54.0),
                    Gap(30.0),
                    Text(
                      'Wellwise',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                    )
                  ],
                ),
              )
            ],
        body: Column(
          children: [Expanded(child: Text('hello'))],
        ));
  }
}
