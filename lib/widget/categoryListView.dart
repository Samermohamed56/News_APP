import 'package:flutter/material.dart';
import 'package:news/models/info.dart';
import 'package:news/widget/category.dart';

class categoryListView extends StatelessWidget {
  const categoryListView({
    super.key,
  });
  final List<Info> newsinfo = const [
    Info("assets/business.avif", "business"),
    Info("assets/entertaiment.avif", "entertainment"),
    Info("assets/general.avif", "general"),
    Info("assets/health.avif", "health"),
    Info("assets/science.avif", "science"),
    Info("assets/sports.avif", "sports"),
    Info("assets/technology.jpeg", "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return categoryCard(info: newsinfo[index]);
        },
        itemCount: newsinfo.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
