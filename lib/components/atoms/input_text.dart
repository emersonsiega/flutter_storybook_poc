import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String placeholder;
  final ValueChanged<String> onChanged;
  final TextInputType inputType;
  final TextInputAction inputAction;

  const InputText({
    Key key,
    @required this.label,
    @required this.onChanged,
    this.placeholder,
    this.inputType: TextInputType.text,
    this.inputAction: TextInputAction.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: placeholder,
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
      onChanged: onChanged,
      textInputAction: inputAction,
      keyboardType: inputType,
    );
  }
}
