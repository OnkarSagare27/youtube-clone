import 'package:flutter/material.dart';

class YouPage extends StatelessWidget {
  const YouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0F0F0F),
        actions: [
          IconButton(
            onPressed: () => print('Pressed Cast'),
            icon: Icon(Icons.cast_sharp),
          ),
          IconButton(
            onPressed: () => print('Pressed Notifications'),
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () => print('Pressed Search'),
            icon: Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () => print('Pressed Settings'),
            icon: Icon(Icons.settings_outlined),
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
