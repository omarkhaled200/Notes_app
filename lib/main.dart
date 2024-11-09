import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/edit_note_view_body.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/constant.dart';

void main() async {

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteViewBody.id: (context) => const EditNoteViewBody(),
      },
      initialRoute: NotesView.id,
    );
  }
}
