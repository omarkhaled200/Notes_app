import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Edit_note_item.dart';
import 'package:notes_app/model/note_model.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});
  static String id = 'EditNoteViewBody';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteItem(note: note),
    );
  }
}
