import 'package:flutter/material.dart';
import 'package:notes_app/Views/edit_note_view_body.dart';
import 'package:notes_app/Views/notes_view.dart';

void main() {
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
      NotesView.id:(context)=>NotesView(),
      EditNoteViewBody.id:(context)=>EditNoteViewBody()
    },
    initialRoute: NotesView.id,
    );
  }
}