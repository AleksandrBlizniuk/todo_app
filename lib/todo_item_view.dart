import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/Bloc/todo_bloc.dart';
import 'package:todo/todo_checkbox.dart';
import 'package:todo/todo_record.dart';

class TodoItemViewWidget extends StatefulWidget {
  final TodoBloc bloc;

  const TodoItemViewWidget({
    required this.bloc,
    required this.record,
    super.key,
  });

  final TodoRecord record;

  @override
  State<TodoItemViewWidget> createState() => _TodoItemViewWidgetState();
}

class _TodoItemViewWidgetState extends State<TodoItemViewWidget>
    with SingleTickerProviderStateMixin {
  String title = '', body = '';
  late bool _isExpanded;
  AnimationController? _animationController;

  int _calculateTextLines() {
    final span = TextSpan(
      text: widget.record.body,
    );
    final textPainter = TextPainter(
      text: span,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(maxWidth: MediaQuery.of(context).size.width - 66);
    final numLines = textPainter.computeLineMetrics().length;
    return numLines;
  }

  @override
  void initState() {
    title = widget.record.title;
    body = widget.record.body;
    super.initState();
    _isExpanded = false;
  }

  @override
  void dispose() {
    super.dispose();
    _animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_animationController == null) {
      final double lineNumer = _calculateTextLines().toDouble();
      _animationController ??= AnimationController(
        vsync: this,
        lowerBound: lineNumer <= 3 ? lineNumer : 3,
        upperBound: lineNumer == 1 ? lineNumer + 3 : lineNumer,
        duration: const Duration(milliseconds: 300),
      );
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
        if (_isExpanded) {
          _animationController?.forward();
        } else {
          _animationController?.reverse();
        }
      },
      child: Container(
        //height: _controller.value * 60,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFD9D9D9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.record.title,
                  maxLines: 1,
                ),
                TodoCheckbox(
                  checked: widget.record.checked,
                  onChanged: (bool checked) {
                    widget.bloc.add(TodoEvent.updateTodo(id: widget.record.id, isChecked: checked,),);
                  },
                  checkedColor: Colors.black,
                  backgroundColor: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 200),
              child: AnimatedBuilder(
                animation: _animationController!,
                builder: (_, __) {
                  final double value = _animationController!.value;

                  return Text(
                    widget.record.body,
                    overflow: TextOverflow.ellipsis,
                    maxLines:
                        (value.isNaN || value.isInfinite || value.isNegative
                                ? 1
                                : value.abs().toInt()) +
                            2,
                  );
                },
              ),
            ),
            // AnimatedBuilder(
            //   animation: _animationController,
            //   builder: (_, __) {
            //
            //     return Text(
            //       widget.record.body,
            //       overflow: TextOverflow.ellipsis,
            //       maxLines: _animationController.value.toInt(),
            //     );
            //   },
            // ),
            const SizedBox(
              height: 20,
            ),
            if (_isExpanded)
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 140,
                    height: 46,
                    child: TextButton(
                      onPressed: () {
                        widget.bloc.add(
                            TodoEvent.deleteTodo(
                              id: widget.record.id
                            ));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFCA4B4B),
                        ),
                      ),
                      child: const Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: 140,
                    height: 46,

                    child: TextButton(


                      onPressed: () {


                        showDialog(
                            context: context,
                            builder: (_) => Wrap(
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
                                      TextFormField(
                                        initialValue: widget.record.title,
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
                                      TextFormField(
                                        initialValue: widget.record.body,
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
                                                      TodoEvent.updateTodo(
                                                        title: title,
                                                        body: body,
                                                        id: widget.record.id
                                                      ),
                                                    );
                                                    Navigator.pop(context);
                                                  }
                                                },
                                                child: const Text(
                                                  'Edit',
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
                        ));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFA0E14C),
                        ),
                      ),
                      child: const Text(
                        'Edit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            Align(
              alignment: Alignment.bottomRight,
              child: AnimatedRotation(
                turns: _isExpanded ? 0.25 : 0.75,
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
