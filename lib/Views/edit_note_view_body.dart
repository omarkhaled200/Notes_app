import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Edit_note_item.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  static String id = 'EditNoteViewBody';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteItem(),
    );
  }
}
