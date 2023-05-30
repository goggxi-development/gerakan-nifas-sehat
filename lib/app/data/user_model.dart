import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int usia;
  @HiveField(2)
  final int kelahiranKe;
  @HiveField(3)
  final String alamat;

  UserModel({
    required this.name,
    required this.usia,
    required this.kelahiranKe,
    required this.alamat,
  });
}
