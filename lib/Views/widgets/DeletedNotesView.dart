import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notescubit_cubit.dart';

class TrashView extends StatelessWidget {
  const TrashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotescubitCubit, NotescubitState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Trash"),
          ),
          body: BlocBuilder<NotescubitCubit, NotescubitState>(
            builder: (context, state) {
              final deletednotes =
                  context.read<NotescubitCubit>().deletedNotes ?? [];
              if (deletednotes.isEmpty) {
                return const Center(child: Text("No deleted Notes"));
              }

              return ListView.builder(
                itemCount: deletednotes.length,
                itemBuilder: (context, index) {
                  final note = deletednotes[index];
                  return ListTile(
                    title: Text(note.title),
                    subtitle: Text(note.subtitle),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Restore Button
                        IconButton(
                          icon: const Icon(Icons.restore, color: Colors.green),
                          onPressed: () {
                            context.read<NotescubitCubit>().restoreNote(note);
                          },
                        ),
                        // Purge Button
                        IconButton(
                          icon: const Icon(Icons.delete_forever,
                              color: Colors.red),
                          onPressed: () {
                            context.read<NotescubitCubit>().purgeNote(note);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
