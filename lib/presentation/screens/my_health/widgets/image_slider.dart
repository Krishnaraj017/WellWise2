import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => const Gap(10),
        itemBuilder: (context, index) => Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1600679472233-eabc13b79f07?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZHJpbmslMjB3YXRlcnxlbnwwfHwwfHx8MA%3D%3D',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.4),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            const Positioned(
              bottom: 16,
              left: 10,
              child: SizedBox(
                width: 180,
                child: Text(
                  '3 Mistakes To Avoid While Drinking Water',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
        itemCount: 2,
      ),
    );
  }
}