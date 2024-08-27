import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/articlemodel.dart';
import 'package:news/models/dio.dart';
import 'package:news/widget/newsTileCategory.dart';

class newsListViewBuilder extends StatefulWidget {
  const newsListViewBuilder({super.key,required this.category});
final String category;
  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = newsService(dio: Dio()).getGeneralNews(category:widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return newscategory(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Center(child: Text("there is no internet..")));
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
