
import 'package:flutter/material.dart';

class CustomSearchicon extends StatelessWidget {
  const CustomSearchicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(Icons.search,size: 28,),
      ),
    ) ;
  }
}