import 'package:flutter/material.dart';

class CheckContainer extends StatefulWidget {
  const CheckContainer({super.key});

  @override
  State<CheckContainer> createState() => _CheckContainerState();
}

class _CheckContainerState extends State<CheckContainer> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: isChecked ? Center(child: FittedBox(child: Icon(Icons.done))) : null,
      ),
    );
  }
}
