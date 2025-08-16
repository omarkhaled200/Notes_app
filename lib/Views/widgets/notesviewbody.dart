import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/widgets/ArchivedNotesView.dart';
import 'package:notes_app/Views/widgets/Custom_app_bar.dart';
import 'package:notes_app/Views/widgets/Custom_listView_item.dart';
import 'package:notes_app/Views/widgets/DeletedNotesView.dart';
import 'package:notes_app/cubit/notes_cubit/notescubit_cubit.dart';

class NotesViewbody extends StatefulWidget {
  const NotesViewbody({super.key});

  @override
  State<NotesViewbody> createState() => _NotesViewbodyState();
}

class _NotesViewbodyState extends State<NotesViewbody> {
  @override
  void initState() {
    /// هنا هنجيب كل النوتس اللي مش مؤرشفة بس
    BlocProvider.of<NotescubitCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Customappbar(
            title: "Notes",
            trashicon: Icons.delete,
            trashonpressed: () {
              context.read<NotescubitCubit>().featchDeletedNotes();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TrashView()),
              ).then((_) {
                context.read<NotescubitCubit>().fetchAllNotes();
              });
            },
            searchicon: Icons.search,
            serachonPressed: () {},
            archiveicon: Icons.archive,
            archiveonpressed: () {
              context.read<NotescubitCubit>().featchArchivedNotes();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ArchivedNotesView()),
              ).then((_) {
                context.read<NotescubitCubit>().fetchAllNotes();
              });
            },
          ),
          const Expanded(child: CustomListViewItem()),
        ],
      ),
    );
  }
}
