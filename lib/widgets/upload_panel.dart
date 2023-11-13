import 'package:flutter/material.dart';

class UploadPanel extends StatelessWidget {
  const UploadPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
    );
  }
}
