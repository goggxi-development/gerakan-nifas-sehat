import "package:hive/hive.dart";

part "gerakan_nifas_model.g.dart";

@HiveType(typeId: 0)
class GerakanNifasModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String media;
  @HiveField(4)
  bool? isFavourite;
  @HiveField(5)
  final int number;

  GerakanNifasModel({
    required this.id,
    required this.title,
    required this.description,
    required this.media,
    required this.isFavourite,
    required this.number,
  });
}
