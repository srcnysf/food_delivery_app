// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealAdapter extends TypeAdapter<Meal> {
  @override
  final int typeId = 0;

  @override
  Meal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Meal()
      ..id = fields[0] as String?
      ..name = fields[1] as String?
      ..url = fields[2] as String?
      ..time = fields[3] as String?
      ..price = fields[4] as int?
      ..ingrediendsList = (fields[5] as List?)?.cast<String?>()
      ..addsOnList = (fields[6] as List?)?.cast<String>()
      ..desc = fields[7] as String?
      ..count = fields[8] as int?;
  }

  @override
  void write(BinaryWriter writer, Meal obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.time)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.ingrediendsList)
      ..writeByte(6)
      ..write(obj.addsOnList)
      ..writeByte(7)
      ..write(obj.desc)
      ..writeByte(8)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
