import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_app_bar.dart';

class EditNoteItem extends StatelessWidget {
  const EditNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  24.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Customappbar(title: "Edit Notes", icon: Icons.check)
        ],
      ),
    );
  }
}