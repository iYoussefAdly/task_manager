import 'package:flutter/material.dart';

class CheckContainer extends StatelessWidget {
  const CheckContainer({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff03655B) : Colors.white,
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: isSelected
          ? Center(
              child: FittedBox(child: Icon(Icons.done, color: Colors.white)),
            )
          : null,
    );
  }
}
