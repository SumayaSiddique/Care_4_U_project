import 'package:care_4_u_project/Datamodel/WorkoutModels/UniqueExercises/AllData.dart';

class CircuitModel {
  String? name;
  int? cycle;
  List<ExerciseModel>? exercises;
  CircuitModel({
    this.cycle,
    this.name,
    this.exercises,
  });
}
