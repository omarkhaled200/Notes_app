import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_app_bar.dart';
import 'package:notes_app/Views/widgets/Custom_text_field.dart';

class EditNoteItem extends StatelessWidget {
  const EditNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal:  24.0),
      child: Column(
        children: [
          SizedBox(height: 60,),
          Customappbar(title: "Edit Notes", icon: Icons.check),
          SizedBox(height: 40,),
          CustomTextField(hint: 'Title',),
          SizedBox(height: 20,),
          CustomTextField(hint: 'Contant',maxline: 5,),
        ],
      ),
    );
  }
}