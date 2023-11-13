import 'package:flutter/material.dart';

class SubscribedChannel extends StatelessWidget {
  const SubscribedChannel({super.key, required this.pfp, required this.name});

  final String pfp;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
      height: 110,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(pfp),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            name,
            maxLines: 1,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}
