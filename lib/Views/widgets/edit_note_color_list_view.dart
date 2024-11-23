
import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Color_List_view.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

class EditNoteColorListView extends StatefulWidget {
  const EditNoteColorListView({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListViewState();
}

class _EditNoteColorListViewState extends State<EditNoteColorListView> {
  late int currentindex = 0;
  @override
  void initState() {
    currentindex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  currentindex = index;
                  widget.note.color = colors[index].value;
                  setState(() {});
                },
                child: Coloritem(
                  color: colors[index],
                  isActive: currentindex == index,
                ),
              ),
            );
          }),
    );
  }
}
