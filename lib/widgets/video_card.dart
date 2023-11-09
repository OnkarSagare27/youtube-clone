import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset('assets/thumbnails/valorant.jpg'),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/thumbnails/prof.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 5, 10),
                  width: 300,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'All about Game development | What to study, jobs, packages? Simply Explained',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Apna College • 1.3M views • 1 year ago',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.clip,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  margin: EdgeInsets.fromLTRB(0, 4, 15, 0),
                  child: IconButton(
                    iconSize: 18,
                    splashRadius: 18,
                    color: Colors.white,
                    onPressed: () => print('Menu Pressed'),
                    icon: Icon(
                      Icons.more_vert_rounded,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
