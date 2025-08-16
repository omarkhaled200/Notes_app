import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/Custom_search_icon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({
    super.key,
    required this.title,
    required this.searchicon,
    this.serachonPressed,
    required this.archiveicon,
    this.archiveonpressed,
    required this.trashicon,
    this.trashonpressed,
  });
  final String title;
  final IconData searchicon;
  final void Function()? serachonPressed;
  final IconData archiveicon;
  final void Function()? archiveonpressed;
  final IconData trashicon;
  final void Function()? trashonpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        Row(
          children: [
            CustomTrashicon(
              icon: trashicon,
              onPressed: trashonpressed,
            ),
            const SizedBox(
              width: 5,
            ),
            CustomArchiveicon(
              icon: archiveicon,
              onPressed: archiveonpressed,
            ),
            const SizedBox(
              width: 5,
            ),
            CustomSearchicon(
              icon: searchicon,
              onPressed: serachonPressed,
            ),
          ],
        )
      ],
    );
  }
}

class CustomEditappbar extends StatelessWidget {
  const CustomEditappbar({
    super.key,
    required this.title,
    required this.searchicon,
    this.serachonPressed,
  });
  final String title;
  final IconData searchicon;
  final void Function()? serachonPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        CustomTrashicon(
          icon: searchicon,
          onPressed: serachonPressed,
        )
      ],
    );
  }
}
