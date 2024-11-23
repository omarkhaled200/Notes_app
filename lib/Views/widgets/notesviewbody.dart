import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/widgets/Custom_app_bar.dart';
import 'package:notes_app/Views/widgets/Custom_listView_item.dart';
import 'package:notes_app/cubit/notes_cubit/notescubit_cubit.dart';

class NotesViewbody extends StatefulWidget {
  const NotesViewbody({super.key});

  @override
  State<NotesViewbody> createState() => _NotesViewbodyState();
}

class _NotesViewbodyState extends State<NotesViewbody> {
  @override
  void initState() {
    BlocProvider.of<NotescubitCubit>(context).featchAllNotes();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Customappbar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(child: CustomListViewItem()),
        ],
      ),
    );
  }
}
