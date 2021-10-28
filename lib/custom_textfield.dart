import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  String hintText;
  CustomTextField(this.label, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          height: 30,
          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff96C2CD)),
                  borderRadius: BorderRadius.circular(5)),
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}