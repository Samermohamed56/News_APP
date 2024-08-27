import 'package:flutter/material.dart';
import 'package:news/widget/newsListViewBuilder.dart';

class Categoryview extends StatelessWidget {
  const Categoryview({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          newsListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
