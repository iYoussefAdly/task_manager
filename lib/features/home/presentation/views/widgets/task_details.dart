import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("alkfjads", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text("al;fkjadsl", style: TextStyle(color: Color(0xff9FA4A2))),
      ],
    );
  }
}
