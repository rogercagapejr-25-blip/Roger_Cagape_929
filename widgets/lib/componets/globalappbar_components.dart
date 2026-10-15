import 'package:flutter/material.dart';

class GlobalappbarComponent extends StatelessWidget implements PreferredSizeWidget {
  const GlobalappbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      title: Text("CPU Socials"),
      actions: [Icon(Icons.person)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}