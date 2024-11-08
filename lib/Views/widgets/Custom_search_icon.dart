
import 'package:flutter/material.dart';

class CustomSearchicon extends StatelessWidget {
  const CustomSearchicon({super.key, required this.icon});
  final IconData icon;
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
        child: Icon(icon,size: 28,),
      ),
    ) ;
  }
}