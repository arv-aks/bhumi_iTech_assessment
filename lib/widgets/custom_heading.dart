
import 'package:flutter/material.dart';
import 'package:one/constants.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading(
      {super.key,
      required this.title,
      required this.showArrow,
      required this.showButton});

  final String title;
  final bool showButton;
  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: kTitleTextStyle),
        if (showButton)
          Row(
            children: [
              const Text("See All",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500)),
              if (showArrow)
                const Icon(Icons.keyboard_arrow_right_outlined,
                    color: Colors.grey),
            ],
          ),
      ],
    );
  }
}
