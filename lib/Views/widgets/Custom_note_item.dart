import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteitem extends StatelessWidget {
  const CustomNoteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16,left: 16,bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Text(
                'Build your career with omar khaled',
                style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 22),
              ),
            ),
            trailing: IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.trash,color: Colors.black,size: 22,) ,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24,bottom: 16),
            child: Text('May 20 , 2022',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 14),),
          )
        ],
      ),
    );
  }
}
