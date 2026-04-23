import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const TaskManager());
}

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView());
  }
}
