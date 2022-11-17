import 'package:flutter/material.dart';

class TodoCheckbox extends StatefulWidget {
  const TodoCheckbox({
    this.checkedColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.padding = const EdgeInsets.all(4),
    this.checked = false,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(4),
    ),
    this.borderColor = Colors.grey,
    required this.onChanged,
    super.key,
  });

  final Color checkedColor, backgroundColor, borderColor;
  final EdgeInsets padding;
  final bool checked;
  final BorderRadius borderRadius;
  final void Function(bool checked) onChanged;

  @override
  State<TodoCheckbox> createState() => _TodoCheckboxState();
}

class _TodoCheckboxState extends State<TodoCheckbox> {
  late bool _checked;

  @override
  void initState() {
    super.initState();
    _checked = widget.checked;
  }

  @override
  void didUpdateWidget(covariant TodoCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.checked != widget.checked) {
      _checked = widget.checked;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _checked = !_checked;
        });
        widget.onChanged(_checked);
      },
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          color: widget.backgroundColor,
          border: Border.all(
            color: widget.borderColor,
          ),
        ),
        child: Icon(
          Icons.check,
          color: _checked ? widget.checkedColor : Colors.transparent,
        ),
      ),
    );
  }
}
