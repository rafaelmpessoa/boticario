import 'package:flutter/material.dart';

class InputFieldForm extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController textController;
  final Function(String value) validator, onChange;

  const InputFieldForm({
    Key key,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
    @required this.textController,
    this.validator,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      controller: textController,
      validator: validator,
      style: TextStyle(color: Colors.white70),
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}
