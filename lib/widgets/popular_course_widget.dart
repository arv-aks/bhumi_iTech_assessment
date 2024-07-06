import 'package:flutter/material.dart';
import 'package:one/constants.dart';
import 'package:one/widgets/custom_icon.dart';

class PopularCoursesWidget extends StatelessWidget {
  const PopularCoursesWidget({super.key, required this.assetPath});

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFDF6EC),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1, color: Colors.grey.withOpacity(0.1)),
      ),
      width: MediaQuery.sizeOf(context).width * 0.55,
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              Image.asset("assets/image_1398.png"),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  color: kWhiteColor,
                ),
                padding: const EdgeInsets.all(14),
                child: const Text(kBecomeDesignerText, style: kCourseTitleTextStyle),
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: CustomIcon(iconPath: assetPath, color: kWhiteColor),
          ),
        ],
      ),
    );
  }
}
