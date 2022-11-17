import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/todo_record.dart';
import 'package:uuid/uuid.dart';

abstract class TodoRepository {
  Future<List<TodoRecord>> fetchTodo();

  Future<TodoRecord> updateRecord({
    required String id,
    String? title,
    String? body,
    bool? isChecked,
  });

  Future<TodoRecord> createTodo({
    required String title,
    required String body,
  });

  Future<void> deleteTodo({required String id});
}

class HiveTodoRepository implements TodoRepository {
  Box<TodoRecord>? box;

  Future<void> _checkHiveBox() async {
    if (box == null) {
      await Hive.initFlutter();
      Hive.registerAdapter(
        TodoRecordAdapter(),
      );
      box = await Hive.openBox<TodoRecord>('TodoBox');
    }
  }

  @override
  Future<List<TodoRecord>> fetchTodo() async {
    await _checkHiveBox();

    return box!.values.toList();
  }

  @override
  Future<TodoRecord> updateRecord({
    required String id,
    String? title,
    String? body,
    bool? isChecked,
  }) async {
    await _checkHiveBox();

    final TodoRecord? todo = box!.get(id);

    if (todo != null) {
      final newTodo = todo.copyWith(
        title: title,
        body: body,
        checked: isChecked,
      );

      box!.put(id, newTodo);
      return newTodo;
    } else {
      throw Exception('Unable to find the todo with id $id');
    }
  }

  @override
  Future<TodoRecord> createTodo({
    required String title,
    required String body,
  }) async {
    await _checkHiveBox();

    final String key = const Uuid().v4();
    final TodoRecord record = TodoRecord(
      id: key,
      title: title,
      body: body,
    );

    await box!.put(key, record);

    return record;
  }

  @override
  Future<void> deleteTodo({required String id}) async {
    await _checkHiveBox();

    return box!.delete(id);
  }
}
