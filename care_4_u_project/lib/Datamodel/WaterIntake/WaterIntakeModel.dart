import 'package:cloud_firestore/cloud_firestore.dart';

class WaterIntakeModel {
  WaterIntakeModel(
      {required this.dailyGoal,
      required this.numberOfGlasses,
      required this.timestamp});
  final int dailyGoal;
  final int numberOfGlasses;
  final Timestamp timestamp;
}
