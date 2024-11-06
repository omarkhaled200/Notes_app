import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_app_bar.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 40,),
          Customappbar(),
        ],
      ),
    );
  }
}

