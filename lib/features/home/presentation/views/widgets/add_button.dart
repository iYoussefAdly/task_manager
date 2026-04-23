import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/views/widgets/add_task_bar.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.widget,
    required this.controller,
  });

  final AddTaskBar widget;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffD7DDDB),
        shape: BoxShape.circle
      ),
      child: Center(
        child: IconButton(
          icon: Icon(Icons.add,color: Color(0xff929896),),
          onPressed: () {
            widget.onAdd(controller.text);
            controller.clear();
          },
        ),
      ),
    );
  }
}