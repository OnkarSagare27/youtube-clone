import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedPageIndex;
  final List<Widget> _pages = [
    Container(
      child: Center(
        child: Text('Home'),
      ),
    ),
    Container(
      child: Center(
        child: Text('Home'),
      ),
    ),
    Container(
      child: Center(
        child: Text('Home'),
      ),
    ),
    Container(
      child: Center(
        child: Text('Home'),
      ),
    ),
    Container(
      child: Center(
        child: Text('Home'),
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
      appBar: AppBar(
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
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (selectedPageIndex) {
          setState(() {
            _selectedPageIndex = selectedPageIndex;
            _pageController.jumpToPage(selectedPageIndex);
          });
        },
        indicatorColor: Colors.orange,
        selectedIndex: _selectedPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            tooltip: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.map_rounded),
            icon: Icon(Icons.map_outlined),
            label: 'Bases',
            tooltip: 'Bases',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.search_rounded),
            icon: Icon(Icons.search_outlined),
            label: 'Search',
            tooltip: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings_rounded),
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
            tooltip: 'Settings',
          ),
        ],
      ),
    );
  }
}
