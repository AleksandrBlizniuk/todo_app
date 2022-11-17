part of 'todo_bloc.dart';

@immutable
@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.createTodo({required String title, required String body,}) = _CreateTodoEvent;

  const factory TodoEvent.updateTodo({required String id , String? title, String? body, bool? isChecked,}) = _UpdateTodoEvent;

  const factory TodoEvent.loadTodos() = _LoadTodosEvent;

  const factory TodoEvent.deleteTodo({required String id}) = _DeleteTodoEvent;
}
