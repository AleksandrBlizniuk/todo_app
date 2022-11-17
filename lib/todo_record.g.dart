// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoRecordAdapter extends TypeAdapter<TodoRecord> {
  @override
  final int typeId = 0;

  @override
  TodoRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoRecord(
      id: fields[2] as String,
      title: fields[0] as String,
      body: fields[1] as String,
      checked: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, TodoRecord obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.body)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.checked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
