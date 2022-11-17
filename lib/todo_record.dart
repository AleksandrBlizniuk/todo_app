import 'package:hive/hive.dart';

part 'todo_record.g.dart';

@HiveType(typeId: 0)
class TodoRecord {
  TodoRecord({
    required this.id,
    required this.title,
    required this.body,
    this.checked = false,
  });

  @HiveField(0)
  final String title;
  @HiveField(1)
  final String body;
  @HiveField(2)
  final String id;
  @HiveField(3)
  final bool checked;

  TodoRecord copyWith({
    String? id,
    String? title,
    String? body,
    bool? checked,
  }) =>
      TodoRecord(
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
        checked: checked ?? this.checked,
      );
}
