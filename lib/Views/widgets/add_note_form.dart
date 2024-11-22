import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/widgets/Custom_buttom_add_note.dart';
import 'package:notes_app/Views/widgets/Custom_text_field.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';

class Addnoteform extends StatefulWidget {
  const Addnoteform({
    super.key,
  });

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'Contant',
            maxline: 5,
          ),
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustombuttomAddnote(
                isloading: state is AddNoteloading? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var notemodel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
