import 'package:flutter/material.dart';
import 'package:news/models/articlemodel.dart';
import 'package:news/widget/newsTile.dart';

class newscategory extends StatelessWidget {
  final List<Articlemodel> articles;

  const newscategory({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Newstile(
            articlemodel: articles[index],
          );
        },
      ),
    );
  }
}
