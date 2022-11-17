import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo/Bloc/todo_bloc.dart';


class ToDoTaskDialog extends StatefulWidget {
  const ToDoTaskDialog({
    required this.bloc,
    super.key,
  });

  final TodoBloc bloc;

  @override
  State<ToDoTaskDialog> createState() => _ToDoTaskDialogState();
}

class _ToDoTaskDialogState extends State<ToDoTaskDialog> {
  String title = '', body = '';

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Dialog(
            backgroundColor: Color(0xFFD9D9D9),
            insetPadding: const EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: <Widget>[
                  TextField(
                    onChanged: (String text) {
                      title = text;
                    },
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter todo title',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    onChanged: (String text) {
                      body = text;
                    },
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter todo body',
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          width: 140,
                          height: 46,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFFCA4B4B),
                              ),
                            ),
                            onPressed: () => Navigator.pop(
                              context,
                              'Cancel',
                            ),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 140,
                          height: 46,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFFA0E14C),
                              ),
                            ),
                            onPressed: () {
                              if (title.isEmpty || body.isEmpty) {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          title: Text(
                                              'One or both fields are empty!'),
                                          content: FloatingActionButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Text('OK'),
                                          ),
                                        ));
                              } else {
                                widget.bloc.add(
                                  TodoEvent.createTodo(
                                    title: title,
                                    body: body,
                                  ),
                                );
                                Navigator.pop(context);
                              }
                            },
                            child: const Text(
                              'Save',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
