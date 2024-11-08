import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Views/widgets/Custom_app_bar.dart';
import 'package:notes_app/Views/widgets/Custom_listView_item.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Customappbar(title: "Notes",icon: Icons.search,),
          Expanded(child: CustomListViewItem()),
        ],
      ),
    );
  }
}

