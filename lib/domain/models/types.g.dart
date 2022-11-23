// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SongTypesAdapter extends TypeAdapter<SongTypes> {
  @override
  final int typeId = 0;

  @override
  SongTypes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SongTypes(
      id: fields[0] as String,
      title: fields[1] as String,
      artist: fields[2] as String,
      uri: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SongTypes obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.artist)
      ..writeByte(3)
      ..write(obj.uri);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SongTypesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
