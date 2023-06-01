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
      id: fields[0] as String,
      title: fields[1] as String,
      description: fields[2] as String,
      media: fields[3] as String,
      isFavourite: fields[4] as bool?,
      number: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, GerakanNifasModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.media)
      ..writeByte(4)
      ..write(obj.isFavourite)
      ..writeByte(5)
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
