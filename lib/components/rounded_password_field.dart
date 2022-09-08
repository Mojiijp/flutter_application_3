import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  const RoundedPasswordField({
    Key? key, 
    required this.onChanged,
    required this.hintText 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: const Icon(
            Icons.lock,
            color: Color.fromARGB(255, 241, 45, 111),
          ),
          suffixIcon: const Icon(
            Icons.visibility,
            color: Color.fromARGB(255, 241, 45, 111),
          ),
          border: InputBorder.none,
        ),
      )
    );
  }
}