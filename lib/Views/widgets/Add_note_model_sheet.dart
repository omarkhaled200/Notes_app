
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/Views/widgets/add_note_form.dart';
import 'package:notes_app/Views/widgets/snackbar.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubit/notes_cubit/notescubit_cubit.dart';

class AddNotemodelsheet extends StatelessWidget {
  const AddNotemodelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            snackbarfailure(context);
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotescubitCubit>(context).featchAllNotes();
            Navigator.pop(context);
            snackbarsuccess(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteloading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: Addnoteform(),
              ),
            ),
          );
        },
      ),
    );
  }
}
