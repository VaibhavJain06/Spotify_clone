import 'package:flutter/material.dart';
import 'package:spotify_clone/models/data.dart';

class BrowseAll extends StatelessWidget {
  const BrowseAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
      child: SizedBox(
        height: 700,
        child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: 1.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    color: diffColor[index].colors,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    diffColor[index].title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                childCount: diffColor.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*
CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: 1.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    color: diffColor[index].colors,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    diffColor[index].title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                childCount: diffColor.length,
              ),
            ),
          ],
        ),
*/