import 'package:flutter/material.dart';

import 'package:spotify_clone/ui%20components/RecentlyPlayed.dart';
import 'package:spotify_clone/ui%20components/RowAlbum.dart';
import 'package:spotify_clone/ui%20components/TopMixesView.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const Drawer(shape: ContinuousRectangleBorder()),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              leading: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Builder(
                  builder: (context) => TextButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 136, 45, 197),
                      shape: const CircleBorder(),
                    ),
                    child: Text(
                      'V',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ),

              actions: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      side: const BorderSide(style: BorderStyle.none)),
                  child: const Text('All',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15)),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 52, 51, 51),
                      side: const BorderSide(style: BorderStyle.none)),
                  child: const Text('Music',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 13)),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 52, 51, 51),
                    side: const BorderSide(style: BorderStyle.none),
                  ),
                  child: const Text('Podcasts',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 13)),
                ),
                const SizedBox(width: 75.0),
              ],
              expandedHeight: 70,
              
              floating: true,
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  

                    const SizedBox(height: 12),
                    const Row(
                      children: [
                        RowAlbumCard(
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67616d0000b2735f3ede47954a93aa03efe5f9"),
                          label: 'ANIMAL',
                        ),
                        SizedBox(width: 8),
                        RowAlbumCard(
                          image: NetworkImage(
                              "https://daily-mix.scdn.co/covers/on_repeat/PZN_On_Repeat2_DEFAULT-en.jpg"),
                          label: 'On Repeat',
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        RowAlbumCard(
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67706f00000002256e5fd2d2b6df5b9e98ac4e"),
                          label: 'This Is Weeknd',
                        ),
                        SizedBox(width: 8),
                        RowAlbumCard(
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67706f000000023ec51dd9c17a9add42c2e249"),
                          label: 'This Is Arijit\nSingh',
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        RowAlbumCard(
                          image: NetworkImage(
                              "https://thisis-images.scdn.co/37i9dQZF1DZ06evO1n6IJz-default.jpg"),
                          label: 'This Is Atif\nAslam',
                        ),
                        SizedBox(width: 8),
                        RowAlbumCard(
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67706f000000020f9071523edb8a48b0e961e2"),
                          label: 'Punjabi 101',
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Your top mixes',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const TopMixes(),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Recently played',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const RecentlyPlayed(),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Recently played',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const RecentlyPlayed(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

