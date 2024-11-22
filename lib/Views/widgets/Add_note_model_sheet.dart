import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Views/widgets/Custom_buttom_add_note.dart';
import 'package:notes_app/Views/widgets/Custom_text_field.dart';
import 'package:notes_app/Views/widgets/add_note_form.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';

class AddNotemodelsheet extends StatelessWidget {
  const AddNotemodelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failled ${state.errmessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteloading ? true : false,
              child: const SingleChildScrollView(
                child: Addnoteform(),
              ),
            );
          },
        ),
      ),
    );
  }
}
