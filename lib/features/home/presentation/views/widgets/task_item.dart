import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/data/models/task_model.dart';
import 'package:task_manager/features/home/presentation/views/widgets/check_container.dart';
import 'package:task_manager/features/home/presentation/views/widgets/task_details.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.task,
    required this.onToggleDone,
    required this.onDelete,
  });
  final TaskModel task;
  final VoidCallback onToggleDone;
  final VoidCallback onDelete;

  String _formatTime(DateTime date) {
    final int hour = date.hour > 12 ? date.hour - 12 : (date.hour == 0 ? 12 : date.hour);
    final String minute = date.minute.toString().padLeft(2, '0');
    final String period = date.hour >= 12 ? 'PM' : 'AM';
    return '$hour:$minute $period';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              GestureDetector(
                onTap: onToggleDone,
                child: CheckContainer(isSelected: task.isDone),
              ),
              SizedBox(width: 30),
              Expanded(
                child: TaskDetails(
                  isTaskDone: task.isDone,
                  title: task.title,
                  timeLabel: _formatTime(task.date),
                ),
              ),
              IconButton(
                onPressed: onDelete,
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
