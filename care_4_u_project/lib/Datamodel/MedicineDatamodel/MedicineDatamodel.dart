class MedicineDatamodel {
  final String name;
  final DateTime time;
  final bool beforeMeal;
  final bool notify;

  MedicineDatamodel({
    required this.name,
    required this.time,
    required this.beforeMeal,
    required this.notify,
  });
}
