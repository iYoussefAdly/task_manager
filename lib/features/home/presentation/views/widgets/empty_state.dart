import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check_circle_outline, size: 80),
          SizedBox(height: 10),
          Text("No tasks yet"),
          Text("Add a task to get started"),
        ],
      ),
    );
  }
}