import 'package:cloud_firestore/cloud_firestore.dart';

class Usermodel {
  final String email, password, fullName;
  final int age;
  final double weight, height;
  final bool isMale;
  final int drank;
  final int goal;
  final Timestamp drankOn;

  Usermodel({
    required this.fullName,
    required this.age,
    required this.email,
    required this.password,
    required this.height,
    required this.isMale,
    required this.weight,
    required this.drank,
    required this.drankOn,
    required this.goal,
  });
}
