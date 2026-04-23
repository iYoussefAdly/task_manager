import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/views/widgets/check_container.dart';
import 'package:task_manager/features/home/presentation/views/widgets/task_details.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({super.key});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool currentStateOfItem = false;

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
                onTap: () {
                  setState(() {
                    currentStateOfItem = !currentStateOfItem;
                  });
                },
                child: CheckContainer(isSelected: currentStateOfItem),
              ),
              SizedBox(width: 30),
              TaskDetails(isTaskDone: currentStateOfItem),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
