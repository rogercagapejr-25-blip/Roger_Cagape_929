import 'package:flutter/material.dart';
import 'package:widgets/componets/globalappbar_components.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: Center(
        child: Text("Profile Screen"),
      ),
    );
  }
}