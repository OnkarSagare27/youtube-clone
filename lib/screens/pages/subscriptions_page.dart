import 'package:flutter/material.dart';
import 'package:youtube_clone/data_darts/yt_data.dart';
import 'package:youtube_clone/widgets/community_post.dart';
import 'package:youtube_clone/widgets/shorts_suggestions.dart';
import 'package:youtube_clone/widgets/subscribed_channel.dart';
import 'package:youtube_clone/widgets/video_card.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  @override
  Widget build(BuildContext context) {
    YTData ytData = YTData();
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                elevation: 0,
                backgroundColor: Color(0xFF0F0F0F),
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
                floating: true,
                pinned: false,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(150),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: ytData.subscribedChannels.length,
                            itemBuilder: (context, index) {
                              return SubscribedChannel(
                                name: ytData.subscribedChannels.values
                                    .elementAt(index)['channelName']
                                    .toString(),
                                pfp: ytData.subscribedChannels.values
                                    .elementAt(index)['pfp']
                                    .toString(),
                              );
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 35,
                                  margin: EdgeInsets.only(right: 10, left: 15),
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 10, right: 10, bottom: 5),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
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
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const VideoCard(
                      videoDuration: '0:47',
                      thumbnailUrl:
                          'https://cdn.discordapp.com/attachments/1056114049647120445/1174597573563129917/maxresdefault.png?ex=65682c3c&is=6555b73c&hm=5570147261acad659b671a4db329f1668eadedcc6207e1107cce19bb149ea289&',
                      channelPfp:
                          'https://cdn.discordapp.com/attachments/1056114049647120445/1174598090469150810/APkrFKYxvJDi_rQrf3jVYymI6hwXiYEZuW3EyCfYRIYSPIIs176-c-k-c0x00ffffff-no-rj.png?ex=65682cb7&is=6555b7b7&hm=037d4ff77accebe25583c0faf89a8c3268b7a2f89dd839435b85dc1b5092c6bc&',
                      channelNameAndStuff: 'Google • 8.4K views • 2 weeks ago',
                      videoTitle:
                          'The Evolution of Google Maps in Asia Pacific',
                    ),
                    const CommunityPost(
                        image:
                            'https://cdn.discordapp.com/attachments/1056114049647120445/1174600571672604772/vchvT7toZ_bdXfr8t2-WD30bVUko0V11wPf6DyWK0aeMmWanZVu4YpVo0H_10q1RBPmwWKZtZi0R1gs800-c-fcrop64119480000d947ffff-nd-v1.png?ex=65682f07&is=6555ba07&hm=3d12736175258a26533616a3b8dedbb6cf431149564c745a68f256a848ddaf9c&',
                        pfp:
                            'https://cdn.discordapp.com/attachments/1056114049647120445/1174596819397906432/GsP5Yvc5jOSop4SJf_75wdOYaEbO-7ZyYhnARodAGRnEMh-OQjGPGzUz2ZtzsHPtqFyHGvmbEtIs176-c-k-c0x00ffffff-no-rj.png?ex=65682b88&is=6555b688&hm=17d9f3f716d7445aa897a50c6c924888fcb151b5b4dc9f5faa73949fb530a4a9&',
                        name: 'Firebase',
                        date: '6 months ago',
                        caption:
                            '''👀 See which session this team was recording → http://goo.gle/io23-content-yt

This year, the Firebase team is excited to bring you top product announcements to help you: 

✴️ Get to market quickly and securely with fully managed infrastructure
✴️ Make confident decisions to optimize the app experience with rich insights and powerful testing monitoring

Join Miguel Ramos, Nathan Yim, and the team at #GoogleIO to be in-the-know on all things Firebase.''',
                        likesCount: '28K',
                        commentsCount: '320'),
                    const VideoCard(
                        videoDuration: '1:45',
                        thumbnailUrl:
                            'https://cdn.discordapp.com/attachments/1056114049647120445/1174592151422771243/maxresdefault.png?ex=6568272f&is=6555b22f&hm=f8060731487b275d4864f1f4d9a35b3cd1bec231f3aeeb10cc97f9575ff93423&',
                        channelPfp:
                            'https://cdn.discordapp.com/attachments/1056114049647120445/1174591206911660073/APkrFKaD8t4oFlgXcZKoW512Z81CBJuej3K9uHAlSI0xs176-c-k-c0x00ffffff-no-rj.png?ex=6568264e&is=6555b14e&hm=d67a0ffafe990958a4e61f8305beef205f96215d757e0f727537d6bbefd418f8&',
                        channelNameAndStuff:
                            'Flutter • 23K views • 3 months ago',
                        videoTitle: 'Firebase Analytics (Package of the Week)'),
                    const ShortsSuggestions(),
                    const VideoCard(
                      videoDuration: '2:11',
                      thumbnailUrl:
                          'https://cdn.discordapp.com/attachments/1056114049647120445/1174590852790759444/maxresdefault.png?ex=656825fa&is=6555b0fa&hm=8f5e6d9450115df189bea3919995f880c50b93b197fe2def77243619f59cec8d&',
                      channelPfp:
                          'https://cdn.discordapp.com/attachments/1056114049647120445/1174591206911660073/APkrFKaD8t4oFlgXcZKoW512Z81CBJuej3K9uHAlSI0xs176-c-k-c0x00ffffff-no-rj.png?ex=6568264e&is=6555b14e&hm=d67a0ffafe990958a4e61f8305beef205f96215d757e0f727537d6bbefd418f8&',
                      channelNameAndStuff: 'Flutter • 17K views • 1 month ago',
                      videoTitle: 'firebase_auth (Package of the Week)',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
