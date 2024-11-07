import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_text_field.dart';
import 'package:notes_app/constant.dart';

class AddNotemodelsheet extends StatelessWidget {
  const AddNotemodelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(hint: 'Title',),
                    SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'Contant',maxline: 5,),
        ],
      ),
    );
  }
}

