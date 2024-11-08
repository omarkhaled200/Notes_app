import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_note_item.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:  24.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
        return const Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CustomNoteitem(),
        );
      }),
    );
  }
}
