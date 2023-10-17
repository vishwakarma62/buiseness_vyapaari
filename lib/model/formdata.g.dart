// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formdata.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FormDataAdapter extends TypeAdapter<FormData> {
  @override
  final int typeId = 0;

  @override
  FormData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FormData(
      name: fields[0] as String?,
      password: fields[1] as String?,
      email: fields[2] as String?,
      phone: fields[3] as String?,
      location: fields[4] as String?,
      zip: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FormData obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.password)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.location)
      ..writeByte(5)
      ..write(obj.zip);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
