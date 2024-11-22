import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Views/widgets/Add_note_model_sheet.dart';
import 'package:notes_app/Views/widgets/notesviewbody.dart';
import 'package:notes_app/constant.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
                context: context,
                builder: (context) {
                  return AddNotemodelsheet();
                });
          },
          child: Icon(
            FontAwesomeIcons.plus,
            color: Colors.black,
          ),
          backgroundColor:kprimarycolor,
          shape:const CircleBorder(),
        ),
        body: const NotesViewbody());
  }
}

