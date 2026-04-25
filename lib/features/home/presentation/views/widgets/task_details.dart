import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({
    super.key,
    required this.isTaskDone,
    required this.title,
    required this.timeLabel,
  });
  final bool isTaskDone;
  final String title;
  final String timeLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: isTaskDone ? TextDecoration.lineThrough : null,
            decorationThickness: isTaskDone ? 3 : null,
          ),
        ),
        SizedBox(height: 5),
        Text(timeLabel, style: TextStyle(color: Color(0xff9FA4A2))),
      ],
    );
  }
}
