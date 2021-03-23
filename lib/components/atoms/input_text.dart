import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String label;
  final String placeholder;
  final ValueChanged<String> onChanged;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final String value;

  const InputText({
    Key key,
    @required this.label,
    @required this.onChanged,
    this.value,
    this.placeholder,
    this.inputType: TextInputType.text,
    this.inputAction: TextInputAction.next,
  }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.value ?? "");

    super.initState();
  }

  @override
  void didUpdateWidget(covariant InputText oldWidget) {
    if (_controller.text != widget.value) {
      _controller.text = widget.value;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.placeholder,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          gapPadding: 0,
        ),
      ),
      onChanged: widget.onChanged,
      textInputAction: widget.inputAction,
      keyboardType: widget.inputType,
    );
  }
}
