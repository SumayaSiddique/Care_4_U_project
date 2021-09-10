class WaterIntakeModel {
  WaterIntakeModel({
    required this.dailyGoal,
    required this.numberOfGlasses,
  });
  final int dailyGoal;
  final int glassSize = 250;
  final int numberOfGlasses;
}
