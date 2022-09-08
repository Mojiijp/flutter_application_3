import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/text_field_container.dart';

class RounededInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RounededInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged, 
    required this.labelText, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: const Color.fromARGB(255, 241, 45, 111),
          ),
          labelText: labelText,
          hintText: hintText,
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.always
        ),
      ),
    );
  }
}