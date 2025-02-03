import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 52, 51, 51),
            borderRadius: BorderRadius.circular(6.0)),
        child: Row(
          children: [
            Image.network(
                "https://daily-mix.scdn.co/covers/on_repeat/PZN_On_Repeat2_DEFAULT-en.jpg"),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
