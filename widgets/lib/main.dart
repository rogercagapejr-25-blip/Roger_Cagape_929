import 'package:flutter/material.dart';
import 'package:widgets/screens/main_screen.dart';
import 'package:widgets/screens/newsfeed_screen.dart';
import 'package:widgets/screens/notification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: NotificationScreen()
    );
  }
}
