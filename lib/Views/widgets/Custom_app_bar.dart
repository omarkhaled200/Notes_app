
import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_search_icon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text('Notes',style: TextStyle(fontSize: 28),),
        CustomSearchicon(),
      ],
    );
  }
}

