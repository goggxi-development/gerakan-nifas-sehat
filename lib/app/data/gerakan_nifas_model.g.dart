// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gerakan_nifas_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GerakanNifasModelAdapter extends TypeAdapter<GerakanNifasModel> {
  @override
  final int typeId = 0;

  @override
  GerakanNifasModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GerakanNifasModel(
      title: fields[0] as String,
      description: fields[1] as String,
      media: fields[2] as String,
      isFavourite: fields[3] as bool?,
      number: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, GerakanNifasModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.media)
      ..writeByte(3)
      ..write(obj.isFavourite)
      ..writeByte(4)
      ..write(obj.number);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GerakanNifasModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
