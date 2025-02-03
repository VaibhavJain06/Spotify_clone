import 'package:flutter/material.dart';
import 'package:spotify_clone/models/data.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 190.0,
      alignment: Alignment.bottomLeft,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recentlyplayedlist.length,
          itemBuilder: (ctx, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        height: 150,
                        width: 150,
                        image: NetworkImage(recentlyplayedlist[index].url)),
                    Row(
                      children: [
                        Text(
                          recentlyplayedlist[index].title,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
    );
  }
}
