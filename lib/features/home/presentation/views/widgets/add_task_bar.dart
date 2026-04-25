import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/views/widgets/add_button.dart';
import 'package:task_manager/features/home/presentation/views/widgets/custom_text_field.dart';

class AddTaskBar extends StatefulWidget {
  const AddTaskBar({super.key, required this.onAdd});
  final ValueChanged<String> onAdd;
  @override
  State<AddTaskBar> createState() => _AddTaskBarState();
}
class _AddTaskBarState extends State<AddTaskBar> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: CustomTextField(controller: controller),
            ),
            SizedBox(
              width: 10,
            ),
            AddButton(widget: widget, controller: controller)
          ],
        ),
      ),
    );
  }
}


