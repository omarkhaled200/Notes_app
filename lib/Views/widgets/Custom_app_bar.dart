import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_search_icon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        CustomSearchicon(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
