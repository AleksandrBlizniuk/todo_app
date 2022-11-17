import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/Bloc/bloc_status.dart';
import 'package:todo/Bloc/todo_bloc.dart';
import 'package:todo/text_styles.dart';
import 'package:todo/Login&Registration/todo_registration_page.dart';
import 'package:todo/todo_item_view.dart';
import 'package:todo/Login&Registration/todo_login_page.dart';
import 'package:todo/todo_repository.dart';
import 'package:todo/todo_stub.dart';
import 'task_dialog.dart';

void main() {
  runApp(
    MaterialApp(
      home: /*const*/ ToDoApp(),
    ),
  );
}

class ToDoApp extends StatefulWidget {
  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  final TodoBloc _bloc = TodoBloc(
    HiveTodoRepository(),
  )..add(
      const TodoEvent.loadTodos(),
    );

  // const ToDoApp({Key? key}) : super(key: key);;
  void _onFloatingTap(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => ToDoTaskDialog(
              bloc: _bloc,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Sign in menu',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15),),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginEmailSection()),
                );
              },
            ),
            Padding(padding: EdgeInsets.only(top: 25),),
            ElevatedButton(
              child: const Text('Registration'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterEmailSection()),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF797979),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onFloatingTap(context),
        child: SvgPicture.asset('assets/icons/add.svg'),
        backgroundColor: Color(0xFF2859D8),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state.status == BlocStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return state.records.isEmpty
                ? Center(
                    child: Text(
                      'No items yet',
                      style: ToDoTextStyles.inter24,
                    ),
                  )
                : ListView.builder(
                    itemCount: state.records.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: TodoItemViewWidget(
                          bloc: _bloc,
                          record: state.records[index],
                        ),
                      );
                    },
                  );
          }
        },
      ),
    );
  }
}
