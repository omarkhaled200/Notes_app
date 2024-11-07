import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_note_item.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: CustomNoteitem(),
      );
    });
  }
}
