import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/constant.dart';

class CustombuttomAddnote extends StatelessWidget {
  const CustombuttomAddnote({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
  final isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kprimarycolor),
        child: Center(
          child: isloading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ))
              : const Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}
