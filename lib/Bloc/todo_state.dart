part of 'todo_bloc.dart';

@immutable
@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required List<TodoRecord> records,
    required BlocStatus status,
    Object? error,
  }) = _TodoState;
}
