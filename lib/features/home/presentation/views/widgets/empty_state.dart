import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.check_circle_outline, size: 100,color: Color(0xffA3C1BD),),
        SizedBox(height: 10),
        Text("No tasks yet",style: TextStyle(color: Color(0xff6F7573),fontSize: 19),),
        SizedBox(height: 8),
        Text("Add a task to get started",style: TextStyle(color: Color(0xff9BA09F)),),
      ],
    );
  }
}