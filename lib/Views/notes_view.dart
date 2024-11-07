import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Views/widgets/Add_note_model_sheet.dart';
import 'package:notes_app/Views/widgets/notesviewbody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return AddNotemodelsheet();
                });
          },
          child: Icon(
            FontAwesomeIcons.plus,
            color: Colors.black,
          ),
          backgroundColor: Color(0xff54EED9),
          shape: CircleBorder(),
        ),
        body: const NotesViewbody());
  }
}

