import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/notesviewbody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewbody()
    );
  }
}

