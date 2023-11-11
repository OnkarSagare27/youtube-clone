import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/video_card.dart';

class ShortsPage extends StatefulWidget {
  const ShortsPage({super.key});

  @override
  State<ShortsPage> createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.black,
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

              floating: true, // Set to true for the app bar to float
              pinned: false, // Set to true to make the app bar pinned
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const VideoCard(
                    videoDuration: '10:38',
                    thumbnailUrl:
                        'https://cdn.discordapp.com/attachments/1056114049647120445/1172217916750565456/hqdefault.png?ex=655f8402&is=654d0f02&hm=ba987fe642e88dc3230b59a1bd535d346a528dc1040f82e366add7611613399f&',
                    channelPfp:
                        'https://cdn.discordapp.com/attachments/1056114049647120445/1172219710545350666/nhDLqeIgXMJBDIrX2bXavvHoWX0tsslDEh7k2xZ1P0W8b_CMRVigp2kxJubYEVwBcBlogZDes176-c-k-c0x00ffffff-no-rj.png?ex=655f85ad&is=654d10ad&hm=1e6113ed842beb690612cbffd3c300f48396c043a0b0bef24fbcd64d246211fd&',
                    channelNameAndStuff:
                        'Apna College • 1.3M views • 1 year ago',
                    videoTitle:
                        'All about Game development | What to study, jobs, packages? Simply Explained',
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
