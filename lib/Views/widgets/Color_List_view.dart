import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key, required this.isActive, required this.color});
  final Color color;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int currentindex = 0;
  List<Color> colors = const [
    Color(0xffFFCDB2),
    Color(0xffFFB4A2),
    Color(0xffE5989B),
    Color(0xffB5838D),
    Color(0xff6D6875),
    ///////////////////
    Color(0xff0d1e4c),
    Color(0xffc48cb3),
    Color(0xffe5c9d7),
    Color(0xff83a6ce),
    Color(0xff26415e),
    Color(0xff0b1b32),
  ];

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
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
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
