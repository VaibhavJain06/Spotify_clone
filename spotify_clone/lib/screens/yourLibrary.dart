import 'package:flutter/material.dart';
import 'package:spotify_clone/models/data.dart';
import 'package:spotify_clone/ui%20components/ListToGrid.dart';
import 'package:spotify_clone/ui%20components/bottomSheet.dart';

class YourLibrary extends StatefulWidget {
  const YourLibrary({super.key});

  @override
  State<YourLibrary> createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
  var isChanged = true;
  void showbottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 30, 29, 29),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const BottomSheetList(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 35),
        AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Builder(
                builder: (context) => TextButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 136, 45, 197),
                        shape: const CircleBorder(),
                      ),
                      child: Text(
                        'V',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    )),
          ),
          title: Text('Your Library',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.white,
              iconSize: 30,
            ),
            const SizedBox(width: 10),
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton.icon(
                          onPressed: showbottomsheet,
                          icon: const Icon(Icons.compare_arrows,
                              color: Color.fromARGB(224, 255, 255, 255)),
                          label: const Text(
                            'Recents',
                            style: TextStyle(
                                color: Color.fromARGB(218, 255, 255, 255)),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                isChanged = !isChanged;
                              });
                            },
                            icon: Icon(
                                isChanged
                                    ? Icons.grid_view
                                    : Icons.list_rounded,
                                color:
                                    const Color.fromARGB(215, 255, 255, 255))),
                      ),
                    ],
                  ),
                  isChanged
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            itemCount: yourLibraryList.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(yourLibraryList[index].url),
                              ),
                              title: Text(
                                yourLibraryList[index].title,
                                style: const TextStyle(
                                    color: Color.fromARGB(216, 255, 255, 255)),
                              ),
                              subtitle: Text(
                                yourLibraryList[index].subtitle,
                                style: const TextStyle(
                                  color: Color.fromARGB(143, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: yourLibraryList.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 1.0,
                              mainAxisSpacing: 1.0,
                              childAspectRatio: 0.7,
                            ),
                            itemBuilder: (content, index) => ListToGrid(
                              imageurl: yourLibraryList[index].url,
                              lable: yourLibraryList[index].title,
                              subs: yourLibraryList[index].subtitle,
                            ),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
