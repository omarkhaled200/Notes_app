import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notescubit_cubit.dart';

class ArchivedNotesView extends StatelessWidget {
  const ArchivedNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Archived Notes")),
      body: BlocBuilder<NotescubitCubit, NotescubitState>(
        builder: (context, state) {
          var archivedNotes =
              context.read<NotescubitCubit>().archivedNotes ?? [];

          if (archivedNotes.isEmpty) {
            return const Center(child: Text("No Archived Notes"));
          }

          return ListView.builder(
            itemCount: archivedNotes.length,
            itemBuilder: (context, index) {
              final note = archivedNotes[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  title: Text(note.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Text(note.subtitle),
                  trailing: IconButton(
                    icon: const Icon(Icons.unarchive, color: Colors.green),
                    onPressed: () {
                      // استدعاء دالة لفك الأرشفة
                      context.read<NotescubitCubit>().unarchiveNote(note);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Note restored to main list")),
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
