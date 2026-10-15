import 'package:flutter/material.dart';
import 'package:widgets/componets/globalappbar_components.dart';
import 'package:widgets/componets/noification_component.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() =>
      _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  final List<Map<String, dynamic>> notifications = [
    {
      "username": "Clarence Bagaforo",
      "message": "liked your post.",
      "time": "5 minutes ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "Chin kyle",
      "message": "commented on your post.",
      "time": "10 minutes ago",
      "type": "comment",
      "read": false,
    },
    {
      "username": "Lexi Lore",
      "message": "sent you a friend request.",
      "time": "20 minutes ago",
      "type": "friend_request",
      "read": true,
    },
    {
      "username": "Al Balinas",
      "message": "shared your post.",
      "time": "1 hour ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Jheff Bormelado",
      "message": "mentioned you in a comment.",
      "time": "2 hours ago",
      "type": "mention",
      "read": true,
    },
    {
  "username": "Daniel Padilla",
  "message": "started following you.",
  "time": "5 minutes ago",
  "type": "follow",
  "read": true,
     },
     {
  "username": "Joshua Garcia",
  "message": "comment on your pose",
  "time": "3 hours ago",
  "type": "comment",
  "read": false,
      },
      {
  "username": "Marian Rivera",
  "message": "react on yur post",
  "time": "3 hours ago",
  "type": "react",
  "read": false,
     },
     {
  "username": "Lebron James",
  "message": "started following you.",
  "time": "3 hours ago",
  "type": "follow",
  "read": true,
     },
     {
  "username": "Justine Bieber",
  "message": "mention",
  "time": "3 hours ago",
  "type": "mention",
  "read": false,
     },
     {
  "username": "Robert Garcia",
  "message": "started following you.",
  "time": "3 hours ago",
  "type": "follow",
  "read": false,
     },
  ];

  IconData _iconForType(String? type) {
    switch (type) {

      case "follow":
  return Icons.person;
      case "like":
        return Icons.thumb_up_sharp;

      case "comment":
        return Icons.comment;

      case "react":
        return Icons.person_add;

      case "share":
        return Icons.share;

      case "mention":
        return Icons.alternate_email;

      default:
        return Icons.notifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        itemCount: notifications.length,

        itemBuilder: (context, index) {
          final notification = notifications[index];

          return NotificationComponent(
            username: notification["username"],
            message: notification["message"],
            time: notification["time"],
            icon: _iconForType(notification["type"]),
            selected: !(notification["read"] as bool? ?? false),
          );
        },
      ),
    );
  }
}