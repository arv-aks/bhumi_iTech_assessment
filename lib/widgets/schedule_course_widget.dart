import 'package:flutter/material.dart';
import 'package:one/constants.dart';

class ScheduleCourseWidget extends StatelessWidget {
  const ScheduleCourseWidget(
      {super.key, required this.title, required this.name});

  final String title;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.60,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/Ellipse_1473.png"),
              const SizedBox(width: 5),
              Text(name, style: kSubTitleTextStyle),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
          Row(
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
              const SizedBox(width: 5),
              const Text("Time Remaining", style: kTimeRemainingTextStyle),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: kPrimaryColor.withOpacity(0.15),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
              child: const Text("01h 32m 18s", style: kTimerTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
