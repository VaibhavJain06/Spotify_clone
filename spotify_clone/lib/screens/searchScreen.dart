import 'package:flutter/material.dart';
import 'package:spotify_clone/ui%20components/browseAll.dart';

const Duration fakeAPIDuration = Duration(seconds: 1);

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String? searchWithQuery;
    // The most recent options received from the API.
    late Iterable<Widget> lastOptions = <Widget>[];

    const Drawer(shape: ContinuousRectangleBorder());
    return ListView(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            Row(
              children: [
                Padding(
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          )),
                ),
                const SizedBox(width: 10),
                Text('Search',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 25.0),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
                  return Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 355.0,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    child: ListTile(
                      leading: const Icon(Icons.search),
                      onTap: () {
                        controller.openView();
                      },
                    ),
                  );
                },
                suggestionsBuilder:
                    (BuildContext context, SearchController controller) async {
                  searchWithQuery = controller.text;
                  final List<String> options =
                      (await _FakeAPI.search(searchWithQuery!)).toList();

                  // If another search happened after this one, throw away these options.
                  // Use the previous options instead and wait for the newer request to
                  // finish.
                  if (searchWithQuery != controller.text) {
                    return lastOptions;
                  }

                  lastOptions =
                      List<ListTile>.generate(options.length, (int index) {
                    final String item = options[index];
                    return ListTile(
                      title: Text(item),
                    );
                  });

                  return lastOptions;
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 0, 15),
              child: Text(
                'Browse all',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            const BrowseAll(),
          ],
        ),
      ],
    );
  }
}

class _FakeAPI {
  static const List<String> _searchOptions = [
    'hi',
    'hello',
    'bonjour',
  ];

  static Future<Iterable<String>> search(String query) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    if (query == '') {
      return const Iterable<String>.empty();
    }
    return _searchOptions.where((String option) {
      return option.contains(query.toLowerCase());
    });
  }
}
