import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/widgets/Custom_note_item.dart';
import 'package:notes_app/cubit/notes_cubit/notescubit_cubit.dart';
import 'package:notes_app/model/note_model.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotescubitCubit, NotescubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotescubitCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomNoteitem(),
                );
              }),
        );
      },
    );
  }
}
