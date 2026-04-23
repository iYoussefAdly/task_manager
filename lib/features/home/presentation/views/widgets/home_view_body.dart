import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/data/models/task_model.dart';
import 'package:task_manager/features/home/presentation/views/widgets/add_task_bar.dart';
import 'package:task_manager/features/home/presentation/views/widgets/empty_state.dart';
import 'package:task_manager/features/home/presentation/views/widgets/task_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<TaskModel> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        tasks.isEmpty ? TaskItem() : Container(),
        Spacer(),
        AddTaskBar(onAdd: (text) {}),
      ],
    );
  }
}
