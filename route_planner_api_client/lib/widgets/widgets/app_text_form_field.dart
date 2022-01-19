import 'package:flutter/material.dart';
class AppTextFormFieldWithNoBorder extends StatelessWidget {
  final String label_text;
  final bool obscureText;

  const AppTextFormFieldWithNoBorder({Key? key, required this.label_text, this.obscureText = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(label_text, style: const TextStyle(
            fontSize: 12,
            fontFamily: "Avenir",
          ),),
          TextFormField(
            obscureText: obscureText,
          ),
        ],
      ),
    );
  }
}
