import 'package:flutter/material.dart';
import 'package:news/widget/categoryListView.dart';
import 'package:news/widget/newsListViewBuilder.dart';

class Newshome extends StatelessWidget {
  const Newshome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News"),
            Text(
              "Cloud",
              style: TextStyle(color: Color.fromARGB(183, 255, 153, 0)),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: categoryListView()),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 32,
            )),
            newsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}
