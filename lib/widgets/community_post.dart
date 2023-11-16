import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CommunityPost extends StatelessWidget {
  const CommunityPost({
    super.key,
    required this.pfp,
    required this.image,
    required this.name,
    required this.date,
    required this.caption,
    required this.likesCount,
    required this.commentsCount,
  });
  final String pfp;
  final String image;
  final String name;
  final String date;
  final String caption;
  final String likesCount;
  final String commentsCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 2,
          color: Color(0xFF2B2B2B),
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
                    imageUrl: pfp,
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
                    name,
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
                    date,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.clip,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              width: 25,
              margin: const EdgeInsets.fromLTRB(0, 4, 15, 0),
              child: IconButton(
                iconSize: 25,
                splashRadius: 18,
                color: Colors.white,
                onPressed: () => print('Menu Pressed'),
                icon: const Icon(
                  Icons.more_vert_rounded,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 80,
            child: Text(
              caption,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                overflow: TextOverflow.clip,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: Image.network(image),
        ),
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '30K',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.thumb_down_alt_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 180,
                ),
                Icon(
                  Icons.comment_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '329',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
