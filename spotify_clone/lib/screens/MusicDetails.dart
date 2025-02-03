import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class MusicDetails extends ConsumerStatefulWidget {
  const MusicDetails({
    super.key,
    required this.image,
    required this.colorsList,
    required this.song,
  });

  final String image;
  final List<Color> colorsList;
  final dynamic song;

  @override
  ConsumerState<MusicDetails> createState() => _MusicDetailsState();
}

class _MusicDetailsState extends ConsumerState<MusicDetails> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initalSize = 240;
  double containerHeight = 500;
  double containerInitalHeight = 500;
  bool showtopbar = false;

  @override
  void initState() {
    setState(() {
      imageSize = initalSize;
    });
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initalSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0; //Image Size acc. scroll
        }
        containerHeight = containerInitalHeight - scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        if (scrollController.offset < 179) {
          showtopbar = false;
        } else {
          //TopBar
          showtopbar = true;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List songAlbums = widget.song['songs'];
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: widget.colorsList,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            controller: scrollController,
            
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 45, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 55),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          alignment: Alignment.center,
                          height: 300,
                          width: 250,
                          child: Image.network(
                            widget.image,
                            height: imageSize,
                            width: imageSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                 
                  const Row(
                    children: [Text('')],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Album 2023',
                          style: TextStyle(
                              color: Color.fromARGB(111, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add_circle_outline,
                                  color: Color.fromARGB(141, 255, 255, 255),
                                  size: 25)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.download_for_offline_outlined,
                                  color: Color.fromARGB(140, 255, 255, 255),
                                  size: 25)),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert,
                                color: Color.fromARGB(143, 255, 255, 255),
                                size: 25),
                          ),
                          //const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shuffle_outlined,
                                  color: Color.fromARGB(255, 87, 201, 91),
                                  size: 30)),
                        ],
                      ),
                    ],
                  ),
                  Column(
                      children: List.generate(songAlbums.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.network(
                            songAlbums[index]['image'],
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                songAlbums[index]['title'],
                                style: const TextStyle(
                                    color: Color.fromARGB(176, 255, 255, 255)),
                              ),
                              Text(songAlbums[index]['subtitle'],
                                  style: const TextStyle(
                                    color: Color.fromARGB(175, 154, 139, 139),
                                  )),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert,
                                color: Color.fromARGB(176, 255, 255, 255)),
                          ),
                        ],
                      ),
                    );
                  })),
                ],
              ),
            ),
          ),
          Positioned(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 87,
              width: MediaQuery.of(context).size.width,
              color: showtopbar
                  ? const Color.fromARGB(255, 99, 71, 63)
                  : Colors.transparent,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomLeft,
                children: [
                  Positioned(
                    left: 0,
                    top: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Stack(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 120 - containerHeight.clamp(140, double.infinity),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 87, 201, 91),
                        ),
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 40.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

