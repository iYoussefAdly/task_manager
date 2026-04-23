import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/data/models/task_model.dart';
import 'package:task_manager/features/home/presentation/views/widgets/empty_state.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<TaskModel> tasks = [];
  @override
  Widget build(BuildContext context) {
    return tasks.isEmpty?EmptyState():Container();
  }
}
