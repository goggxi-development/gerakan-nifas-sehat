import "package:hive/hive.dart";

part "gerakan_nifas_model.g.dart";

@HiveType(typeId: 0)
class GerakanNifasModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String media;
  @HiveField(3)
  bool? isFavourite;

  GerakanNifasModel({
    required this.title,
    required this.description,
    required this.media,
    required this.isFavourite,
  });
}
