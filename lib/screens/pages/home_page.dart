import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/video_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
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
              )),
        ),
        VideoCard()
      ],
    );
  }
}
