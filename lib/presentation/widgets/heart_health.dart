import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wellwise/presentation/theme/app_colors.dart';

class HeartHealth extends StatelessWidget {
  final double size;

  const HeartHealth({super.key, this.size = 100.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // added padding so as to help in centering the water drop in Row
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ClipPath(
        clipper: HeartHealthClipper(),
        child: SizedBox(
          height: size,
          width: size,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.gradientColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/heart.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}

class HeartHealthClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..addOval(Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width * 0.75,
        height: size.height * 0.75,
      ));
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => oldClipper != this;
}
