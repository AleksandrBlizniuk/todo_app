// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) createTodo,
    required TResult Function(
            String id, String? title, String? body, bool? isChecked)
        updateTodo,
    required TResult Function() loadTodos,
    required TResult Function(String id) deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? createTodo,
    TResult? Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult? Function()? loadTodos,
    TResult? Function(String id)? deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? createTodo,
    TResult Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult Function()? loadTodos,
    TResult Function(String id)? deleteTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoEvent value) createTodo,
    required TResult Function(_UpdateTodoEvent value) updateTodo,
    required TResult Function(_LoadTodosEvent value) loadTodos,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoEvent value)? createTodo,
    TResult? Function(_UpdateTodoEvent value)? updateTodo,
    TResult? Function(_LoadTodosEvent value)? loadTodos,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoEvent value)? createTodo,
    TResult Function(_UpdateTodoEvent value)? updateTodo,
    TResult Function(_LoadTodosEvent value)? loadTodos,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateTodoEventCopyWith<$Res> {
  factory _$$_CreateTodoEventCopyWith(
          _$_CreateTodoEvent value, $Res Function(_$_CreateTodoEvent) then) =
      __$$_CreateTodoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class __$$_CreateTodoEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_CreateTodoEvent>
    implements _$$_CreateTodoEventCopyWith<$Res> {
  __$$_CreateTodoEventCopyWithImpl(
      _$_CreateTodoEvent _value, $Res Function(_$_CreateTodoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$_CreateTodoEvent(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateTodoEvent implements _CreateTodoEvent {
  const _$_CreateTodoEvent({required this.title, required this.body});

  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'TodoEvent.createTodo(title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTodoEvent &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTodoEventCopyWith<_$_CreateTodoEvent> get copyWith =>
      __$$_CreateTodoEventCopyWithImpl<_$_CreateTodoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) createTodo,
    required TResult Function(
            String id, String? title, String? body, bool? isChecked)
        updateTodo,
    required TResult Function() loadTodos,
    required TResult Function(String id) deleteTodo,
  }) {
    return createTodo(title, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? createTodo,
    TResult? Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult? Function()? loadTodos,
    TResult? Function(String id)? deleteTodo,
  }) {
    return createTodo?.call(title, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? createTodo,
    TResult Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult Function()? loadTodos,
    TResult Function(String id)? deleteTodo,
    required TResult orElse(),
  }) {
    if (createTodo != null) {
      return createTodo(title, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoEvent value) createTodo,
    required TResult Function(_UpdateTodoEvent value) updateTodo,
    required TResult Function(_LoadTodosEvent value) loadTodos,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return createTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoEvent value)? createTodo,
    TResult? Function(_UpdateTodoEvent value)? updateTodo,
    TResult? Function(_LoadTodosEvent value)? loadTodos,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return createTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoEvent value)? createTodo,
    TResult Function(_UpdateTodoEvent value)? updateTodo,
    TResult Function(_LoadTodosEvent value)? loadTodos,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (createTodo != null) {
      return createTodo(this);
    }
    return orElse();
  }
}

abstract class _CreateTodoEvent implements TodoEvent {
  const factory _CreateTodoEvent(
      {required final String title,
      required final String body}) = _$_CreateTodoEvent;

  String get title;
  String get body;
  @JsonKey(ignore: true)
  _$$_CreateTodoEventCopyWith<_$_CreateTodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTodoEventCopyWith<$Res> {
  factory _$$_UpdateTodoEventCopyWith(
          _$_UpdateTodoEvent value, $Res Function(_$_UpdateTodoEvent) then) =
      __$$_UpdateTodoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String? title, String? body, bool? isChecked});
}

/// @nodoc
class __$$_UpdateTodoEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_UpdateTodoEvent>
    implements _$$_UpdateTodoEventCopyWith<$Res> {
  __$$_UpdateTodoEventCopyWithImpl(
      _$_UpdateTodoEvent _value, $Res Function(_$_UpdateTodoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(_$_UpdateTodoEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_UpdateTodoEvent implements _UpdateTodoEvent {
  const _$_UpdateTodoEvent(
      {required this.id, this.title, this.body, this.isChecked});

  @override
  final String id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final bool? isChecked;

  @override
  String toString() {
    return 'TodoEvent.updateTodo(id: $id, title: $title, body: $body, isChecked: $isChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTodoEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTodoEventCopyWith<_$_UpdateTodoEvent> get copyWith =>
      __$$_UpdateTodoEventCopyWithImpl<_$_UpdateTodoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) createTodo,
    required TResult Function(
            String id, String? title, String? body, bool? isChecked)
        updateTodo,
    required TResult Function() loadTodos,
    required TResult Function(String id) deleteTodo,
  }) {
    return updateTodo(id, title, body, isChecked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? createTodo,
    TResult? Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult? Function()? loadTodos,
    TResult? Function(String id)? deleteTodo,
  }) {
    return updateTodo?.call(id, title, body, isChecked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? createTodo,
    TResult Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult Function()? loadTodos,
    TResult Function(String id)? deleteTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(id, title, body, isChecked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoEvent value) createTodo,
    required TResult Function(_UpdateTodoEvent value) updateTodo,
    required TResult Function(_LoadTodosEvent value) loadTodos,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoEvent value)? createTodo,
    TResult? Function(_UpdateTodoEvent value)? updateTodo,
    TResult? Function(_LoadTodosEvent value)? loadTodos,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoEvent value)? createTodo,
    TResult Function(_UpdateTodoEvent value)? updateTodo,
    TResult Function(_LoadTodosEvent value)? loadTodos,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class _UpdateTodoEvent implements TodoEvent {
  const factory _UpdateTodoEvent(
      {required final String id,
      final String? title,
      final String? body,
      final bool? isChecked}) = _$_UpdateTodoEvent;

  String get id;
  String? get title;
  String? get body;
  bool? get isChecked;
  @JsonKey(ignore: true)
  _$$_UpdateTodoEventCopyWith<_$_UpdateTodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadTodosEventCopyWith<$Res> {
  factory _$$_LoadTodosEventCopyWith(
          _$_LoadTodosEvent value, $Res Function(_$_LoadTodosEvent) then) =
      __$$_LoadTodosEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadTodosEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_LoadTodosEvent>
    implements _$$_LoadTodosEventCopyWith<$Res> {
  __$$_LoadTodosEventCopyWithImpl(
      _$_LoadTodosEvent _value, $Res Function(_$_LoadTodosEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadTodosEvent implements _LoadTodosEvent {
  const _$_LoadTodosEvent();

  @override
  String toString() {
    return 'TodoEvent.loadTodos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadTodosEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) createTodo,
    required TResult Function(
            String id, String? title, String? body, bool? isChecked)
        updateTodo,
    required TResult Function() loadTodos,
    required TResult Function(String id) deleteTodo,
  }) {
    return loadTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? createTodo,
    TResult? Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult? Function()? loadTodos,
    TResult? Function(String id)? deleteTodo,
  }) {
    return loadTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? createTodo,
    TResult Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult Function()? loadTodos,
    TResult Function(String id)? deleteTodo,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoEvent value) createTodo,
    required TResult Function(_UpdateTodoEvent value) updateTodo,
    required TResult Function(_LoadTodosEvent value) loadTodos,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return loadTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoEvent value)? createTodo,
    TResult? Function(_UpdateTodoEvent value)? updateTodo,
    TResult? Function(_LoadTodosEvent value)? loadTodos,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return loadTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoEvent value)? createTodo,
    TResult Function(_UpdateTodoEvent value)? updateTodo,
    TResult Function(_LoadTodosEvent value)? loadTodos,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos(this);
    }
    return orElse();
  }
}

abstract class _LoadTodosEvent implements TodoEvent {
  const factory _LoadTodosEvent() = _$_LoadTodosEvent;
}

/// @nodoc
abstract class _$$_DeleteTodoEventCopyWith<$Res> {
  factory _$$_DeleteTodoEventCopyWith(
          _$_DeleteTodoEvent value, $Res Function(_$_DeleteTodoEvent) then) =
      __$$_DeleteTodoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeleteTodoEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_DeleteTodoEvent>
    implements _$$_DeleteTodoEventCopyWith<$Res> {
  __$$_DeleteTodoEventCopyWithImpl(
      _$_DeleteTodoEvent _value, $Res Function(_$_DeleteTodoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteTodoEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteTodoEvent implements _DeleteTodoEvent {
  const _$_DeleteTodoEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'TodoEvent.deleteTodo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTodoEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTodoEventCopyWith<_$_DeleteTodoEvent> get copyWith =>
      __$$_DeleteTodoEventCopyWithImpl<_$_DeleteTodoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String body) createTodo,
    required TResult Function(
            String id, String? title, String? body, bool? isChecked)
        updateTodo,
    required TResult Function() loadTodos,
    required TResult Function(String id) deleteTodo,
  }) {
    return deleteTodo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String body)? createTodo,
    TResult? Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult? Function()? loadTodos,
    TResult? Function(String id)? deleteTodo,
  }) {
    return deleteTodo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String body)? createTodo,
    TResult Function(String id, String? title, String? body, bool? isChecked)?
        updateTodo,
    TResult Function()? loadTodos,
    TResult Function(String id)? deleteTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoEvent value) createTodo,
    required TResult Function(_UpdateTodoEvent value) updateTodo,
    required TResult Function(_LoadTodosEvent value) loadTodos,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoEvent value)? createTodo,
    TResult? Function(_UpdateTodoEvent value)? updateTodo,
    TResult? Function(_LoadTodosEvent value)? loadTodos,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoEvent value)? createTodo,
    TResult Function(_UpdateTodoEvent value)? updateTodo,
    TResult Function(_LoadTodosEvent value)? loadTodos,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodoEvent implements TodoEvent {
  const factory _DeleteTodoEvent({required final String id}) =
      _$_DeleteTodoEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeleteTodoEventCopyWith<_$_DeleteTodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  List<TodoRecord> get records => throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call({List<TodoRecord> records, BlocStatus status, Object? error});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<TodoRecord>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoRecord> records, BlocStatus status, Object? error});
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_TodoState>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$_TodoState(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<TodoRecord>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_TodoState implements _TodoState {
  const _$_TodoState(
      {required final List<TodoRecord> records,
      required this.status,
      this.error})
      : _records = records;

  final List<TodoRecord> _records;
  @override
  List<TodoRecord> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final BlocStatus status;
  @override
  final Object? error;

  @override
  String toString() {
    return 'TodoState(records: $records, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      status,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {required final List<TodoRecord> records,
      required final BlocStatus status,
      final Object? error}) = _$_TodoState;

  @override
  List<TodoRecord> get records;
  @override
  BlocStatus get status;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
