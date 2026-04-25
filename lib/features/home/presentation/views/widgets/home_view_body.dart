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
  final List<TaskModel> tasks = [];

  void addTask(String title) {
    final String cleanedTitle = title.trim();
    if (cleanedTitle.isEmpty) return;
    setState(() {
      tasks.add(
        TaskModel(title: cleanedTitle, date: DateTime.now(), isDone: false),
      );
    });
  }

  void toggleTaskState(int index) {
    setState(() {
      tasks[index] = tasks[index].copyWith(isDone: !tasks[index].isDone);
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: tasks.isEmpty
              ? Center(child: EmptyState())
              : ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return TaskItem(
                      task: tasks[index],
                      onToggleDone: () => toggleTaskState(index),
                      onDelete: () => deleteTask(index),
                    );
                  },
                ),
        ),
        AddTaskBar(onAdd: addTask),
      ],
    );
  }
}
