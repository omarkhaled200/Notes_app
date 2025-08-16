import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/widgets/Custom_app_bar.dart';
import 'package:notes_app/Views/widgets/Custom_text_field.dart';
import 'package:notes_app/Views/widgets/edit_note_color_list_view.dart';
import 'package:notes_app/Views/widgets/snackbar.dart';
import 'package:notes_app/cubit/notes_cubit/notescubit_cubit.dart';
import 'package:notes_app/model/note_model.dart';

class EditNoteItem extends StatefulWidget {
  const EditNoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteItem> createState() => _EditNoteItemState();
}

class _EditNoteItemState extends State<EditNoteItem> {
  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          CustomEditappbar(
            title: "Edit Notes",
            searchicon: Icons.check,
            serachonPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = contant ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotescubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              editsnackbarsuccess(context);
            },
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              contant = value;
            },
            hint: widget.note.subtitle,
            maxline: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          EditNoteColorListView(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
