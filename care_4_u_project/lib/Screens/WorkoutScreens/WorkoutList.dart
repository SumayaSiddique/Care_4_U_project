import 'package:care_4_u_project/Datamodel/WorkoutModels/Level.dart';
import 'package:flutter/material.dart';

class WorkoutList extends StatelessWidget {
  final Level level;
  const WorkoutList({
    Key? key,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(level.name!),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
