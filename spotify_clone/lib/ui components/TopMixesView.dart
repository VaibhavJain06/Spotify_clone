import 'package:flutter/material.dart';
import 'package:spotify_clone/models/data.dart';
import 'package:spotify_clone/screens/MusicDetails.dart';

class TopMixes extends StatelessWidget {
  const TopMixes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 190.0,
      alignment: Alignment.bottomLeft,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topmixeslist.length,
          itemBuilder: (ctx, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => MusicDetails(
                          image: topmixeslist[index].url,
                          colorsList: topmixeslist[index].musicbackColor,
                          song: musicListData[index],
                        ),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                          height: 150,
                          width: 150,
                          image: NetworkImage(topmixeslist[index].url)),
                      Row(
                        children: [
                          Text(
                            topmixeslist[index].title,
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
