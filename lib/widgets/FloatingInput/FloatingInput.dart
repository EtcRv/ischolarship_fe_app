import 'package:flutter/material.dart';

class FloatingInput extends StatefulWidget {
  FloatingInput(
      {super.key,
      required this.labelText,
      required this.setInputValue,
      required this.isPassword});
  String labelText;
  void Function(String value) setInputValue;
  bool isPassword;

  @override
  State<FloatingInput> createState() {
    return _FloatingInputState();
  }
}

class _FloatingInputState extends State<FloatingInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.labelText,
        floatingLabelStyle: MaterialStateTextStyle.resolveWith(
          (Set<MaterialState> states) {
            return TextStyle(color: Color(0xFF8d8888), letterSpacing: 1.3);
          },
        ),
      ),
      onChanged: (value) => widget.setInputValue(value),
    );
  }
}
