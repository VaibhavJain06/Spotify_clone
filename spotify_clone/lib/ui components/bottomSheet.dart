import 'package:flutter/material.dart';

class BottomSheetList extends StatefulWidget {
  const BottomSheetList({super.key});

  @override
  State<BottomSheetList> createState() => _BottomSheetListState();
}

class _BottomSheetListState extends State<BottomSheetList> {
  var istrue = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 4,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 126, 118, 118),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sort by',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const Divider(
            color: Color.fromARGB(22, 255, 255, 255),
          ),
          InkWell(
            onTap: () {
              setState(() {
                istrue = !istrue;
              });
            },
            child: ListTile(
              title: const Text(
                'Recents',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              trailing: Icon(
                istrue ? Icons.check_sharp : null,
                color: Colors.green,
                size: 30.0,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                istrue = !istrue;
              });
            },
            child: ListTile(
              title: const Text(
                'Recently added',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              trailing: Icon(
                istrue ? null : Icons.check_sharp,
                color: Colors.green,
                size: 30.0,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                istrue = !istrue;
              });
            },
            child: ListTile(
              title: const Text(
                'Alphabetical',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              trailing: Icon(
                istrue ? null : Icons.check_sharp,
                color: Colors.green,
                size: 30.0,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                istrue = !istrue;
              });
            },
            child: ListTile(
              title: const Text(
                'Creator',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              trailing: Icon(
                istrue ? null : Icons.check_sharp,
                color: Colors.green,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
