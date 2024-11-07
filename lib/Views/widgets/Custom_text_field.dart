import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(color: kprimarycolor),
        border: build_border(),
        enabledBorder: build_border(),
        focusedBorder: build_border(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder build_border([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
