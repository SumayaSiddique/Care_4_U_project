import 'package:flutter/material.dart';

class MedicineDatamodel {
  final String name;
  final TimeOfDay time;
  final bool beforeMeal;
  final bool notify;

  MedicineDatamodel({
    required this.name,
    required this.time,
    required this.beforeMeal,
    required this.notify,
  });
}
