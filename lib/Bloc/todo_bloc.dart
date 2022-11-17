import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/Bloc/bloc_status.dart';
import 'package:todo/todo_record.dart';
import 'package:todo/todo_repository.dart';

part 'todo_event.dart';

part 'todo_bloc.freezed.dart';

part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository _todoRepository;

  TodoBloc(this._todoRepository)
      : super(
          TodoState(
            status: BlocStatus.loading,
            records: <TodoRecord>[],
          ),
        ) {
    on<TodoEvent>((TodoEvent event, Emitter<TodoState> emit) async {
      await event.when<Future<void>>(
        createTodo: (
          String title,
          String body,
        ) =>
            _createTodo(
          emit: emit,
          title: title,
          body: body,
        ),
        updateTodo: (
          String id,
          String? title,
          String? body,
          bool? isChecked,
        ) =>
            _updateTodo(
          emit: emit,
          title: title,
          body: body,
          isChecked: isChecked,
          id: id,
        ),
        loadTodos: () => _loadTodos(emit: emit),
        deleteTodo: (String id) => _deleteTodo(
          emit: emit,
          id: id,
        ),
      );
    });
  }

  Future<void> _createTodo({
    required Emitter<TodoState> emit,
    required String title,
    required String body,
  }) async {
    if (state.status != BlocStatus.loading) {
      emit(_loadingState());
    }

    await _todoRepository.createTodo(
      title: title,
      body: body,
    );

    emit(
      state.copyWith(status: BlocStatus.loaded, records: await _todoRepository.fetchTodo(),),
    );
  }

  Future<void> _updateTodo({
    required Emitter<TodoState> emit,
    required String id,
    String? title,
    String? body,
    bool? isChecked,
  }) async {
    await _todoRepository.updateRecord(body: body,title: title,id: id, isChecked: isChecked,);
    emit(
      state.copyWith(status: BlocStatus.loaded, records: await _todoRepository.fetchTodo(),),
    );
  }

  Future<void> _deleteTodo({
    required Emitter<TodoState> emit,
    required String id,
  }) async {
    await _todoRepository.deleteTodo(id: id);
    emit(
      state.copyWith(status: BlocStatus.loaded, records: await _todoRepository.fetchTodo(),),
    );
  }

  Future<void> _loadTodos({required Emitter<TodoState> emit}) async {
    if (state.status != BlocStatus.loading) {
      emit(_loadingState());
    }

    final todoRecords = await _todoRepository.fetchTodo();

    emit(
      state.copyWith(status: BlocStatus.loaded, records: todoRecords,),
    );
  }

  TodoState _loadingState() => state.copyWith(status: BlocStatus.loading);

  TodoState _errorState(Object error) => state.copyWith(
        status: BlocStatus.error,
        error: error,
      );
}
