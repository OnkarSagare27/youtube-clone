import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
            child: TabBar(
              labelPadding: EdgeInsets.all(5),
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    margin: EdgeInsets.only(right: 5, left: 5),
                    decoration: const BoxDecoration(
                        color: Color(0xFF272727),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Icon(
                      Icons.explore_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                      width: 50,
                      height: 35,
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
                ),
                Tab(
                  child: Container(
                    height: 35,
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
                ),
                Tab(
                  child: Container(
                    height: 35,
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
                ),
                Tab(
                  child: Container(
                    height: 35,
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
                ),
                Tab(
                  child: Container(
                    height: 35,
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
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(child: Center(child: Text("Tab 1"))),
            Container(child: Center(child: Text("Tab 2"))),
            Container(child: Center(child: Text("Tab 3"))),
            Container(child: Center(child: Text("Tab 4"))),
            Container(child: Center(child: Text("Tab 5"))),
            Container(child: Center(child: Text("Tab 6"))),
          ],
        ),
      ),
    );
  }
}
