import 'package:flutter/material.dart';

class ListToGrid extends StatelessWidget {
  const ListToGrid(
      {super.key,
      required this.imageurl,
      required this.subs,
      required this.lable});
  final String imageurl;
  final String lable;
  final String subs;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 55.0,
          backgroundImage: NetworkImage(imageurl),
        ),
        ListTile(
            title: Text(lable,
                style: const TextStyle(color: Colors.white, fontSize: 10.0)),
            subtitle: Text(subs,
                style: const TextStyle(color: Colors.white, fontSize: 10.0))),
      ],
    );
  }
}
