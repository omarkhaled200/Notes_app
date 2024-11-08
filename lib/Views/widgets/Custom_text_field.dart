import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxline=1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
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
