import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
    required this.videoTitle,
    required this.channelNameAndStuff,
    required this.videoDuration,
    required this.thumbnailUrl,
    required this.channelPfp,
  });

  final String videoTitle;
  final String channelNameAndStuff;
  final String videoDuration;
  final String thumbnailUrl;
  final String channelPfp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width / 16 * 9,
              child: CachedNetworkImage(
                imageUrl: thumbnailUrl,
                placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(
                  color: Colors.red,
                )),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Center(
                  child: Text(
                    videoDuration,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: CachedNetworkImage(
                    imageUrl: channelPfp,
                    placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(
                      color: Colors.red,
                    )),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 5, 10),
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videoTitle,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    channelNameAndStuff,
                    maxLines: 2,
                    style: const TextStyle(
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
              margin: const EdgeInsets.fromLTRB(0, 4, 15, 0),
              child: IconButton(
                iconSize: 18,
                splashRadius: 18,
                color: Colors.white,
                onPressed: () => print('Menu Pressed'),
                icon: const Icon(
                  Icons.more_vert_rounded,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
