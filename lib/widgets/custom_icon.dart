
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, this.onTap, required this.iconPath, this.color});
  final VoidCallback? onTap;
  final String iconPath;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color ?? Colors.grey.withOpacity(0.06),
      radius: 20,
      child: Image.asset(iconPath),
    );
  }
}
