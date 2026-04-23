import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/views/widgets/check_container.dart';
import 'package:task_manager/features/home/presentation/views/widgets/task_details.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              CheckContainer(),
              SizedBox(width: 30),
              TaskDetails(),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
              ],
          ),
        ),
      ),
    );
  }
}
