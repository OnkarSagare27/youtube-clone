import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/data_darts/yt_data.dart';

class ShortsPage extends StatefulWidget {
  @override
  _ShortsPageState createState() => _ShortsPageState();
}

YTData ytData = YTData();

class _ShortsPageState extends State<ShortsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: ytData.shortsList.length,
            itemBuilder: (context, index) {
              return ShortsList(
                name: ytData.shortsList.values.elementAt(index).elementAt(0),
                profilePic:
                    ytData.shortsList.values.elementAt(index).elementAt(1),
                vid: ytData.shortsList.values.elementAt(index).elementAt(2),
                caption: ytData.shortsList.values.elementAt(index).elementAt(3),
                likes: ytData.shortsList.values.elementAt(index).elementAt(4),
                comments:
                    ytData.shortsList.values.elementAt(index).elementAt(5),
              );
            }),
      ),
    );
  }
}

class ShortsList extends StatefulWidget {
  final String name;
  final String profilePic;
  final String vid;
  final String caption;
  final String likes;
  final String comments;
  const ShortsList(
      {super.key,
      required this.name,
      required this.caption,
      required this.comments,
      required this.likes,
      required this.vid,
      required this.profilePic});

  @override
  _ShortsListState createState() => _ShortsListState();
}

class _ShortsListState extends State<ShortsList> {
  bool isLike = false;
  bool isDislike = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          width: w,
          height: h,
          child: Image.asset(
            widget.vid,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0, left: 15.0, right: 15, bottom: 8),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 32,
                  )
                ],
              ),
              SizedBox(
                height: h * 0.275,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        CupertinoIcons.ellipsis,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLike = !isLike;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: isLike ? Colors.blue : Colors.white,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.likes,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDislike = !isDislike;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.thumb_down,
                          color: isDislike ? Colors.blue : Colors.white,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Dislike',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        const Icon(
                          Icons.message_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.comments,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(
                          CupertinoIcons.arrowshape_turn_up_right_fill,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: w * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.caption,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 12.5,
                                backgroundImage: AssetImage(widget.profilePic),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 36,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 32,
                            width: 32,
                            child: Image.asset(
                              'assets/images/music_bar.gif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
