import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {super.key,
      required this.title,
      required this.assetPath,
      required this.backgroundColor});
  final String title;
  final String assetPath;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 22,
          child: Image.asset(assetPath),
        ),
        const SizedBox(height: 10),
        Text(title),
      ],
    );
  }
}