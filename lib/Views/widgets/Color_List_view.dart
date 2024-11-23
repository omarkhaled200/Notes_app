
import 'package:flutter/material.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 38,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorListview extends StatelessWidget {
  const ColorListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        padding:const EdgeInsets.all(2) ,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return const Coloritem();
      }),
    );
  }
}
