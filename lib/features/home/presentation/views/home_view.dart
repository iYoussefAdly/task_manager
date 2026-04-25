import 'package:flutter/material.dart';
import 'package:task_manager/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("My tasks",style: TextStyle(fontWeight: FontWeight.bold,),),
        ),
      ),
      body:HomeViewBody(),
    );
  }
}