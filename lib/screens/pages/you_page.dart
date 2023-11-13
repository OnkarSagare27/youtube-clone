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
            icon: const Icon(Icons.cast_sharp),
          ),
          IconButton(
            onPressed: () => print('Pressed Notifications'),
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () => print('Pressed Search'),
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () => print('Pressed Settings'),
            icon: const Icon(Icons.settings_outlined),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.orange,
                  size: 90,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Onkar Sagare',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Create a channel >',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10, top: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    height: 40,
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: const BoxDecoration(
                        color: Color(0xFF272727),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.switch_account_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Switch account',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 40,
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: const BoxDecoration(
                        color: Color(0xFF272727),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.g_mobiledata,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            'Google Account',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 40,
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: const BoxDecoration(
                        color: Color(0xFF272727),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.private_connectivity,
                            color: Colors.white,
                            size: 19,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Turn on incognito',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'History',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'This list has no videos',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                width: 190,
              ),
              SizedBox(
                width: 80,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () => print('View All Pressed'),
                  child: const Text(
                    'View',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Playlists',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'This list has no videos',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                width: 190,
              ),
              SizedBox(
                width: 80,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () => print('View All Pressed'),
                  child: const Text(
                    'View all',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.play_circle_outline,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Your videos',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.download,
                color: Colors.white,
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Downloads',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  '0 videos',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            color: const Color(0xFF2B2B2B),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.movie_sharp,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Your movies',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.ondemand_video_rounded,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Get YouTube Premium',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            color: const Color(0xFF2B2B2B),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.bar_chart,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Time watched',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.help_outline_outlined,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Help & feedback',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
