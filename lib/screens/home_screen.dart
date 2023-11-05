import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Image.asset('assets/yt_symbol_text_logo.png'),
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
        ],
      ),
    );
  }
}
