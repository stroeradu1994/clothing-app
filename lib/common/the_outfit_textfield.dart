import 'package:flutter/material.dart';
import 'package:clothing_app/utils/constants.dart';

class TheOutfitTextField extends StatefulWidget {
  ValueChanged<String> onChanged;
  VoidCallback onTap;
  TextInputType input;
  String hint;

  TheOutfitTextField(
      {required this.onChanged,
      required this.onTap,
      required this.input,
      required this.hint});

  @override
  State<TheOutfitTextField> createState() => _TheOutfitTextFieldState();
}

class _TheOutfitTextFieldState extends State<TheOutfitTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = new TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(fontSize: 16),
      textAlign: TextAlign.start,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      keyboardType: widget.input,
      decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black45,
          ),
          hintText: widget.hint,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor, width: 1.0),
          ),
          contentPadding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16)),
    );
  }
}
