class Usermodel {
  final String email, password, fullName;
  final int age;
  final double weight, height;
  final bool isMale;

  Usermodel({
    required this.fullName,
    required this.age,
    required this.email,
    required this.password,
    required this.height,
    required this.isMale,
    required this.weight,
  });
}
