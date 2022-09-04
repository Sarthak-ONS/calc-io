import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      this.textEditingController,
      this.label,
      this.callback,
      this.isNumber = true})
      : super(key: key);

  final TextEditingController? textEditingController;
  final String? label;
  final Function? callback;
  final bool? isNumber;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController!,
      maxLines: 1,
      keyboardType:
          widget.isNumber == true ? TextInputType.number : TextInputType.name,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        isCollapsed: false,
        fillColor: Colors.white54,
        isDense: true,
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        focusColor: Colors.red,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText: widget.label ?? 'First Number',
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
