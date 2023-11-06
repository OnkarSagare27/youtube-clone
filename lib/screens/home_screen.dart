import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/pages/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedPageIndex;
  final List<Widget> _pages = [
    HomePage(),
    Container(
      child: Center(
        child: Text('Shorts'),
      ),
    ),
    Container(
      child: Center(
        child: Text('Upload'),
      ),
    ),
    Container(
      child: Center(
        child: Text('Subscriptions'),
      ),
    ),
    Container(
      child: Center(
        child: Text('You'),
      ),
    ),
  ];
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _selectedPageIndex = 0;

    _pageController = PageController(initialPage: _selectedPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F0F0F),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: SizedBox(
          width: 100,
          child: Image.asset('assets/yt_symbol_text_logo.png'),
        ),
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, left: 10, right: 10, bottom: 5),
                  margin: EdgeInsets.only(right: 15, left: 15),
                  decoration: const BoxDecoration(
                      color: Color(0xFF272727),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                  ),
                ),
                Container(
                    width: 50,
                    height: 35,
                    margin: EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        'All',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(
                      top: 5, left: 10, right: 10, bottom: 5),
                  decoration: const BoxDecoration(
                      color: Color(0xFF272727),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Computer Programming',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(
                      top: 5, left: 10, right: 10, bottom: 5),
                  decoration: const BoxDecoration(
                      color: Color(0xFF272727),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Music',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(
                      top: 5, left: 10, right: 10, bottom: 5),
                  decoration: const BoxDecoration(
                      color: Color(0xFF272727),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Live',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(
                      top: 5, left: 10, right: 10, bottom: 5),
                  decoration: const BoxDecoration(
                      color: Color(0xFF272727),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Coding',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: 47,
        child: Column(
          children: [
            Container(
              height: 2,
              color: Color(0xFF2B2B2B),
            ),
            NavigationBar(
              height: 45,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              backgroundColor: Color(0xFF0F0F0F),
              onDestinationSelected: (selectedPageIndex) {
                setState(() {
                  _selectedPageIndex = selectedPageIndex;
                  _pageController.jumpToPage(selectedPageIndex);
                });
              },
              indicatorColor: Colors.transparent,
              selectedIndex: _selectedPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: Colors.white,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: Colors.white,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                  label: 'Home',
                  tooltip: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.video_call,
                        color: Colors.white,
                      ),
                      Text(
                        'Shorts',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.video_call_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'Shorts',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  label: 'Shorts',
                  tooltip: 'Shorts',
                ),
                NavigationDestination(
                  selectedIcon: Icon(
                    Icons.add_circle_outline,
                    size: 40,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 40,
                    color: Colors.white,
                  ),
                  label: 'Upload',
                  tooltip: 'Upload',
                ),
                NavigationDestination(
                  selectedIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.subscriptions,
                        color: Colors.white,
                      ),
                      Text(
                        'Subscriptions',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.subscriptions_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'Subscriptions',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  label: 'Home',
                  tooltip: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.white,
                      ),
                      Text(
                        'You',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'You',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  label: 'Account',
                  tooltip: 'Account',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
